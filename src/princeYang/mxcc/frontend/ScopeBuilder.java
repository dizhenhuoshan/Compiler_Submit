package princeYang.mxcc.frontend;

import princeYang.mxcc.ast.*;
import princeYang.mxcc.errors.MxError;
import princeYang.mxcc.scope.*;

public class ScopeBuilder extends ScopeScanner
{
    private int loopLevel;
    private Scope globalScope, currentScope;
    private FuncEntity currentFuncCallEntity;
    private Type currentReturnType;

    public ScopeBuilder(Scope globalScope)
    {
        this.globalScope = globalScope;
        this.currentScope = globalScope;
        this.loopLevel = 0;
    }

    private void varInitCheck(VarDeclNode varDeclNode)
    {
        varDeclNode.getInitValue().accept(this);
        if (varDeclNode.getVarType().getType() instanceof VoidType || varDeclNode.getInitValue().getType() instanceof VoidType)
            throw new MxError(varDeclNode.getLocation(), "void type shouldn't be in var declaration!\n");
        if (varDeclNode.getVarType().getType().equals(varDeclNode.getInitValue().getType()))
            return;
        if (varDeclNode.getInitValue().getType() instanceof NullType)
        {
            if (!(varDeclNode.getVarType().getType() instanceof ClassType || varDeclNode.getVarType().getType() instanceof ArrayType))
                throw new MxError(varDeclNode.getLocation(), "null type shouldn't be init value here!\n");
        }
        else
            throw new MxError(varDeclNode.getLocation(), "Other error appear in varDecl!\n");
    }

    @Override
    public void visit(MxProgNode mxProgNode)
    {
        for (DeclNode declNode : mxProgNode.getDeclNodesList())
        {
            if (declNode instanceof VarDeclNode || declNode instanceof FuncDeclNode || declNode instanceof ClassDeclNode)
                declNode.accept(this);
            else
                throw new MxError(declNode.getLocation(), "declNode gets fucking wrong!\n");
        }
    }

    @Override
    public void visit(ClassDeclNode classDeclNode)
    {
        ClassEntity classEntity = (ClassEntity) currentScope.getClass(classDeclNode.getIdentName());
        if (classEntity == null)
            throw new MxError(classDeclNode.getLocation(), "class declNode entity boomed!\n");
        currentScope = classEntity.getClassScope();
        for (FuncDeclNode funcDeclNode : classDeclNode.getFuncDeclList())
            funcDeclNode.accept(this);
        for (VarDeclNode varDeclNode : classDeclNode.getVarDeclList())
        {
            if (varDeclNode.getInitValue() != null)
                varInitCheck(varDeclNode);
        }
        currentScope = currentScope.getFather();
        if (currentScope != globalScope)
            throw new MxError(classDeclNode.getLocation(), "Scope: class scope parent NOT GLOBAL\n");
    }

    @Override
    public void visit(FuncDeclNode funcDeclNode)
    {
        FuncEntity funcEntity = (FuncEntity) currentScope.getFunc(funcDeclNode.getIdentName());
        if (funcEntity == null)
            throw new MxError(funcDeclNode.getLocation(), "function declNode Entity boomed!\n");
        if (funcEntity.getRetType() instanceof ClassType)
        {
            if (currentScope.getClass(((ClassType) (funcEntity.getRetType())).getClassIdent()) == null)
                throw new MxError(funcDeclNode.getLocation(), "function return type undefined!\n");
        }
        currentScope = funcEntity.getFuncScope();
        currentReturnType = funcEntity.getRetType();
        for (VarDeclNode varDeclNode : funcDeclNode.getParaDeclList())
        {
            if (varDeclNode.getInitValue() != null)
                varInitCheck(varDeclNode);
        }
        currentScope = currentScope.getFather();
        funcDeclNode.getFuncBlock().accept(this);
    }

    @Override
    public void visit(VarDeclNode varDeclNode)
    {
        if (varDeclNode.getVarType().getType() instanceof ClassType)
        {
            System.err.print("Scope building: var in class is visiting!");
        }
        if (varDeclNode.getInitValue() != null)
            varInitCheck(varDeclNode);
        VarEntity entity = new VarEntity(varDeclNode);
        if (currentScope.isTop())
            entity.setInGlobal(true);
        currentScope.insertVar(entity);
    }

    @Override
    public void visit(ExprStateNode exprStateNode)
    {
        exprStateNode.getExprState().accept(this);
    }

    @Override
    public void visit(ForStateNode forStateNode)
    {
        loopLevel++;
        if (forStateNode.getStartExpr() != null)
            forStateNode.getStartExpr().accept(this);
        if (forStateNode.getStopExpr() != null)
        {
            forStateNode.getStopExpr().accept(this);
            if (!(forStateNode.getStopExpr().getType() instanceof BoolType))
                throw new MxError(forStateNode.getLocation(), "stop condition type should be bool!\n");
        }
        if (forStateNode.getStepExpr() != null)
            forStateNode.getStopExpr().accept(this);
        if (forStateNode.getLoopState() != null)
        {
            if (forStateNode.getLoopState() instanceof FuncBlockNode)
            {
                Scope blockScope = new Scope(currentScope);
                ((FuncBlockNode) forStateNode.getLoopState()).setScope(blockScope);
                currentScope = blockScope;
                forStateNode.getLoopState().accept(this);
                currentScope = currentScope.getFather();
            }
            else
                forStateNode.getLoopState().accept(this);
        }
        else
            throw new MxError(forStateNode.getLocation(), "for LoopStatement is empty\n");
        loopLevel--;
    }

    @Override
    public void visit(WhileStateNode whileStateNode)
    {
        loopLevel++;
        if (whileStateNode.getConditionExpr() != null)
            whileStateNode.getConditionExpr().accept(this);
        else
            throw new MxError(whileStateNode.getLocation(), "condition expr is null!\n");
        if (whileStateNode.getLoopState() != null)
        {
            if (whileStateNode.getLoopState() instanceof FuncBlockNode)
            {
                Scope blockScope = new Scope(currentScope);
                ((FuncBlockNode) whileStateNode.getLoopState()).setScope(blockScope);
                currentScope = blockScope;
                whileStateNode.getLoopState().accept(this);
                currentScope = currentScope.getFather();
            }
            else
                whileStateNode.getLoopState().accept(this);
        }
        else
            throw new MxError(whileStateNode.getLocation(), "while LoopStatement is empty!\n");
        loopLevel--;
    }

    @Override
    public void visit(ReturnStateNode returnStateNode)
    {
        if (returnStateNode.getRetExpr() != null)
        {
            returnStateNode.getRetExpr().accept(this);
            Type retType = returnStateNode.getRetExpr().getType();
            if (retType instanceof VoidType || retType == null)
                throw new MxError(returnStateNode.getLocation(), "shouldn't return void !\n");
            if (retType instanceof NullType && !(currentReturnType instanceof ClassType || currentReturnType instanceof ArrayType))
                throw new MxError(returnStateNode.getLocation(), "shouldn't return null !\n");
            else if (!retType.equals(currentReturnType))
                throw new MxError(returnStateNode.getLocation(), "return type ERROR !\n");
        }
        else
        {
            if (!(currentReturnType instanceof VoidType || currentReturnType == null))
                throw new MxError(returnStateNode.getLocation(), "shouldn't return void! \n");
        }
    }

    @Override
    public void visit(BreakStateNode breakStateNode)
    {
        if (loopLevel <= 0)
            throw new MxError(breakStateNode.getLocation(), "break must in loop! \n");
    }

    @Override
    public void visit(ContinueStateNode continueStateNode)
    {
        if (loopLevel <= 0)
            throw new MxError(continueStateNode.getLocation(), "continue must in loop! \n");
    }

    @Override
    public void visit(IfStateNode ifStateNode)
    {
        ifStateNode.getConditionExpr().accept(this);
        if (!(ifStateNode.getConditionExpr().getType() instanceof BoolType))
            throw new MxError(ifStateNode.getLocation(), "condition expression must be bool type!\n");
        if (ifStateNode.getThenState() instanceof FuncBlockNode)
        {
            Scope blockScope = new Scope(currentScope);
            ((FuncBlockNode) ifStateNode.getThenState()).setScope(blockScope);
            currentScope = blockScope;
            ifStateNode.getThenState().accept(this);
            currentScope = currentScope.getFather();
        }
        else
            ifStateNode.getThenState().accept(this);
        if (ifStateNode.getElseState() != null)
        {
            if (ifStateNode.getElseState() instanceof FuncBlockNode)
            {
                Scope blockScope = new Scope(currentScope);
                ((FuncBlockNode) ifStateNode.getElseState()).setScope(blockScope);
                currentScope = blockScope;
                ifStateNode.getElseState().accept(this);
                currentScope = currentScope.getFather();
            }
            else
                ifStateNode.getElseState().accept(this);
        }
    }

    @Override
    public void visit(MemoryAccessExprNode memoryAccessExprNode)
    {
        memoryAccessExprNode.getHostExpr().accept(this);
        String hostID;
        VarEntity varEntity;
        FuncEntity funcEntity;
        ClassEntity classEntity;
        if (memoryAccessExprNode.getHostExpr().getType() instanceof ArrayType)
            hostID = "__array";
        else if (memoryAccessExprNode.getHostExpr().getType() instanceof StringType)
            hostID = "string";
        else if (memoryAccessExprNode.getHostExpr().getType() instanceof ClassType)
            hostID = ((ClassType) (memoryAccessExprNode.getHostExpr().getType())).getClassIdent();
        else
            throw new MxError(memoryAccessExprNode.getLocation(), "hostExpr type is not suitable for MA!\n");
        classEntity = currentScope.getClass(hostID);
        if (classEntity == null)
            throw new MxError(memoryAccessExprNode.getLocation(), "hostExpr class is not defined! (PACNIC)! \n");
        varEntity = (VarEntity) classEntity.getClassScope().getSelfVar(memoryAccessExprNode.getMemberStr());
        funcEntity = (FuncEntity) classEntity.getClassScope().getSelfFunc(memoryAccessExprNode.getMemberStr());
        if (varEntity != null)
            memoryAccessExprNode.setType(varEntity.getType());
        else if (funcEntity != null)
        {
            currentFuncCallEntity = funcEntity;
            memoryAccessExprNode.setType(funcEntity.getType());
        }
        else
            throw new MxError(memoryAccessExprNode.getLocation(), String.format("%s is not defined in this class!",
                    memoryAccessExprNode.getMemberStr()));
        memoryAccessExprNode.setLeftValue(true);
    }

    @Override
    public void visit(FunctionCallExprNode functionCallExprNode)
    {
        functionCallExprNode.getFuncExpr().accept(this);
        if (!(functionCallExprNode.getFuncExpr().getType() instanceof FuncType))
            throw new MxError(functionCallExprNode.getLocation(), "Function expression invalid!\n");
        functionCallExprNode.setFuncEntity(currentFuncCallEntity);
        // Args type check
        // Caution: last para in class function is "this"
        int paraNum;
        Type requiredType;
        if (currentFuncCallEntity.isInClass())
            paraNum = currentFuncCallEntity.getFuncParas().size() - 1;
        else
            paraNum = currentFuncCallEntity.getFuncParas().size();
        if (paraNum != functionCallExprNode.getParaList().size())
            throw new MxError(functionCallExprNode.getLocation(), "Function call paraments number error!\n");
        for (int i = 0; i < paraNum; i++)
        {
            requiredType = currentFuncCallEntity.getFuncParas().get(i).getType();
            functionCallExprNode.getParaList().get(i).accept(this);
            if (functionCallExprNode.getParaList().get(i).getType() instanceof VoidType)
                throw new MxError(functionCallExprNode.getLocation(), "Function para cannot be void type!\n");
            if (functionCallExprNode.getParaList().get(i).getType() instanceof NullType)
            {
                if (!(requiredType instanceof ClassType || requiredType instanceof ArrayType))
                    throw new MxError(functionCallExprNode.getLocation(), String.format("para %d cannot be null!\n",
                            i));
            }
            else if (!functionCallExprNode.getParaList().get(i).getType().equals(requiredType))
                throw new MxError(functionCallExprNode.getLocation(), String.format("para %d type not meet the " +
                        "reauired!\n", i));
        }
        functionCallExprNode.setLeftValue(false);
        functionCallExprNode.setType(currentFuncCallEntity.getRetType());
    }

    @Override
    public void visit(ArrayAccessExprNode accessExprNode)
    {
        accessExprNode.getArrExpr().accept(this);
        accessExprNode.getSubExpr().accept(this);
        if (!(accessExprNode.getArrExpr().getType() instanceof ArrayType))
            throw new MxError(accessExprNode.getLocation(), "Array access can only use in array!\n");
        if (!(accessExprNode.getSubExpr().getType() instanceof IntType))
            throw new MxError(accessExprNode.getLocation(), "Array index must be intenger!\n");
        accessExprNode.setLeftValue(true);
        accessExprNode.setType(((ArrayType) accessExprNode.getArrExpr().getType()).getArrType());
    }

    @Override
    public void visit(PostFixExprNode postFixExprNode)
    {
        postFixExprNode.getPreExpr().accept(this);
        if (!postFixExprNode.getPreExpr().isLeftValue())
            throw new MxError(postFixExprNode.getLocation(), String.format("op %s can only use after leftValue!\n",
                    postFixExprNode.getPostFixOp().toString()));
        if (!(postFixExprNode.getPreExpr().getType() instanceof IntType))
            throw new MxError(postFixExprNode.getLocation(), String.format("op %s can only use after IntValue!\n",
                    postFixExprNode.getPostFixOp().toString()));
        postFixExprNode.setLeftValue(false);
        postFixExprNode.setType(intType);
    }

    @Override
    public void visit(NewExprNode newExprNode)
    {
        if (newExprNode.getTotalDim() != 0)
        {
            if (newExprNode.getKnownDims() == null)
                System.err.print("new Expr Error fucking\n");
            for (ExprNode dims : newExprNode.getKnownDims())
            {
                dims.accept(this);
                if (!(dims.getType() instanceof IntType))
                    throw new MxError(newExprNode.getLocation(), "Array index must be intenger!\n");
            }
        }
        newExprNode.setLeftValue(false);
        newExprNode.setType(newExprNode.getNewType());
    }

    @Override
    public void visit(PreFixExprNode preFixExprNode)
    {
        preFixExprNode.getPostExpr().accept(this);
        Type postType = preFixExprNode.getPostExpr().getType();
        Operators.PreFixOp pop = preFixExprNode.getPreFixOp();
        switch (pop)
        {
            case POS:
            case NEG:
            case BITWISE_NOT:
                if (!(postType instanceof IntType))
                    throw new MxError(preFixExprNode.getLocation(), String.format("op %s must before intenger!\n",
                            pop.toString()));
                preFixExprNode.setLeftValue(false);
                preFixExprNode.setType(intType);
                break;
            case INC:
            case DEC:
                if (!(postType instanceof IntType))
                    throw new MxError(preFixExprNode.getLocation(), String.format("op %s must before intenger!\n",
                            pop.toString()));
                if (!preFixExprNode.getPostExpr().isLeftValue())
                    throw new MxError(preFixExprNode.getLocation(), String.format("op %s can only use before " +
                            "leftValue!\n", preFixExprNode.getPreFixOp().toString()));
                preFixExprNode.setLeftValue(true);
                preFixExprNode.setType(intType);
                break;
            case LOGIC_NOT:
                if (!(postType instanceof BoolType))
                    throw new MxError(preFixExprNode.getLocation(), String.format("op %s must before bool!\n",
                            pop.toString()));
                preFixExprNode.setLeftValue(false);
                preFixExprNode.setType(boolType);
                break;
        }
    }

    @Override
    public void visit(BinaryExprNode binaryExprNode)
    {
        binaryExprNode.getLhs().accept(this);
        binaryExprNode.getRhs().accept(this);
        Type LType = binaryExprNode.getLhs().getType();
        Type RType = binaryExprNode.getRhs().getType();
        if (!LType.equals(RType))
            throw new MxError(binaryExprNode.getLocation(), "Binary expression shuold have same type!\n");
        if (LType instanceof VoidType)
            throw new MxError(binaryExprNode.getLocation(), "Binary op cannot use on void!\n");
        Operators.BinaryOp bop = binaryExprNode.getBop();
        binaryExprNode.setLeftValue(false);
        switch (bop)
        {

            case ADD:
                if (LType instanceof StringType)
                {
                    binaryExprNode.setType(stringType);
                    break;
                }
            case SUB:
            case MUL:
            case DIV:
            case MOD:
            case SHL:
            case SHR:
            case BITWISE_AND:
            case BITWISE_OR:
            case BITWISE_XOR:
                if (!(LType instanceof IntType))
                    throw new MxError(binaryExprNode.getLocation(), String.format("bop %s can only connect " +
                            "intenger!\n", bop.toString()));
                binaryExprNode.setType(intType);
                break;
            case GREATER_EQUAL:
            case LESS_EQUAL:
            case GREATER:
            case LESS:
                if (!(LType instanceof StringType || LType instanceof IntType))
                    throw new MxError(binaryExprNode.getLocation(),
                            String.format("bop %s can only connect intenger " + "or string!\n", bop.toString()));
                binaryExprNode.setType(boolType);
                break;
            case EQUAL:
            case NEQUAL:
                binaryExprNode.setType(boolType);
                break;
            case LOGIC_AND:
            case LOGIC_OR:
                if (!(LType instanceof BoolType))
                    throw new MxError(binaryExprNode.getLocation(), String.format("bop %s can only connect bool !\n",
                            bop.toString()));
                binaryExprNode.setType(boolType);
                break;
        }
    }

    @Override
    public void visit(AssignExprNode assignExprNode)
    {
        assignExprNode.getLhs().accept(this);
        assignExprNode.getRhs().accept(this);
        if (assignExprNode.getLhs().getType() instanceof VoidType)
            throw new MxError(assignExprNode.getLocation(), "Assign type cannot be void!\n");
        if (assignExprNode.getRhs().getType() instanceof NullType)
        {
            if (!(assignExprNode.getLhs().getType() instanceof ClassType || assignExprNode.getLhs().getType() instanceof ArrayType))
                throw new MxError(assignExprNode.getLocation(), "null type can only assigned to class or array!\n");
        }
        else if (!assignExprNode.getLhs().getType().equals(assignExprNode.getRhs().getType()))
            throw new MxError(assignExprNode.getLocation(), "Assign type are not euqal!\n");
        assignExprNode.setLeftValue(false);
        assignExprNode.setType(voidType);
    }

    @Override
    public void visit(IntConstNode intConstNode)
    {
        intConstNode.setLeftValue(false);
        intConstNode.setType(intType);
    }

    @Override
    public void visit(BoolConstNode boolConstNode)
    {
        boolConstNode.setLeftValue(false);
        boolConstNode.setType(boolType);
    }

    @Override
    public void visit(StringConstNode stringConstNode)
    {
        stringConstNode.setLeftValue(false);
        stringConstNode.setType(stringType);
    }

    @Override
    public void visit(NullConstNode nullConstNode)
    {
        nullConstNode.setLeftValue(false);
        nullConstNode.setType(nullType);
    }

    @Override
    public void visit(IdentExprNode identExprNode)
    {
        String ident = identExprNode.getIdentName();
        FuncEntity funcEntity = currentScope.getFunc(ident);
        VarEntity varEntity = currentScope.getVar(ident);
        Entity entity;
        if (funcEntity != null)
        {
            entity = funcEntity;
            identExprNode.setLeftValue(false);
        }
        else if (varEntity != null)
        {
            entity = varEntity;
            identExprNode.setLeftValue(true);
        }
        else
            throw new MxError(identExprNode.getLocation(), String.format("identifier %s undefined!\n", ident));
        identExprNode.setType(entity.getType());
    }

    @Override
    public void visit(ThisExprNode thisExprNode)
    {
        VarEntity varEntity = currentScope.getVar("this");
        if (varEntity == null)
            throw new MxError(thisExprNode.getLocation(), "identfier this shouldn't appear here!\n");
        thisExprNode.setLeftValue(false);
        thisExprNode.setType(varEntity.getType());
    }
}

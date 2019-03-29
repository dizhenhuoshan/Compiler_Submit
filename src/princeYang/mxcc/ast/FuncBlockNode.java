package princeYang.mxcc.ast;
import princeYang.mxcc.scope.Scope;

import java.util.List;

public class FuncBlockNode extends StateNode
{
    List<StateNode> funcStateList;
    List<VarDeclNode> varDeclList;
    Scope scope;

    public FuncBlockNode(Location location, List<StateNode> funcStateList, List<VarDeclNode> varDeclList)
    {
        this.location = location;
        this.funcStateList = funcStateList;
        this.varDeclList = varDeclList;
    }

    public List<VarDeclNode> getVarDeclList()
    {
        return varDeclList;
    }

    public List<StateNode> getFuncStateList()
    {
        return funcStateList;
    }

    public Scope getScope()
    {
        return scope;
    }

    public void setScope(Scope scope)
    {
        this.scope = scope;
    }

    @Override
    public void accept(AstVisitor visitor)
    {
        visitor.visit(this);
    }
}

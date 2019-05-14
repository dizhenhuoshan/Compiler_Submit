package princeYang.mxcc;

import org.antlr.v4.runtime.BailErrorStrategy;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import princeYang.mxcc.ast.MxProgNode;
import princeYang.mxcc.backend.*;
import princeYang.mxcc.frontend.*;
import princeYang.mxcc.ir.IRROOT;
import princeYang.mxcc.parser.MxLexer;
import princeYang.mxcc.parser.MxParser;
import princeYang.mxcc.scope.Scope;

public class CodeGen
{
    public static void main(String args[])
    {
        String inputPath;
        try
        {
            CharStream input = CharStreams.fromStream(System.in);
            MxLexer mxLexer = new MxLexer(input);
            CommonTokenStream tokens = new CommonTokenStream(mxLexer);
            MxParser mxParser = new MxParser(tokens);
            mxParser.setErrorHandler(new BailErrorStrategy());
            ParseTree progTree = mxParser.mxprogram();
            AstBuilder astBuilder = new AstBuilder();
            MxProgNode ast = (MxProgNode) astBuilder.visit(progTree);
            Scope globalScope = new Scope();
            GlobalPreUseScanner globalPreUseScanner = new GlobalPreUseScanner(globalScope);
            globalPreUseScanner.visit(ast);
            InsideClassPreUseScanner insideClassPreUseScanner = new InsideClassPreUseScanner(globalScope);
            insideClassPreUseScanner.visit(ast);
            ScopeBuilder scopeBuilder = new ScopeBuilder(globalScope);
            scopeBuilder.visit(ast);
            IRBuilder irBuilder = new IRBuilder(globalScope);
            irBuilder.visit(ast);
            IRROOT irRoot = irBuilder.getIrRoot();
            NASMRegFormProcessor regFormProcessor = new NASMRegFormProcessor(irRoot);
            regFormProcessor.transRegToNASMForm();
            GlobalVarProcessor globalVarProcessor = new GlobalVarProcessor(irRoot);
            globalVarProcessor.process();
            GraphAllocator graphAllocator = new GraphAllocator(irRoot);
            graphAllocator.allocateReg();
            NASMFormProcessor nasmFormProcessor = new NASMFormProcessor(irRoot);
            nasmFormProcessor.processNASM();
            FinalInstructionOptimizer finalInstructionOptimizer = new FinalInstructionOptimizer(irRoot);
            finalInstructionOptimizer.optimize();
            NASMPrinter nasmPrinter = new NASMPrinter(System.out);
            nasmPrinter.visit(irRoot);
            System.err.print("miss my girlfriend\n");
        }
        catch (Throwable th)
        {
            th.printStackTrace();
            System.err.println(th.getLocalizedMessage());
            System.err.println(th.getMessage());
            System.err.println(th.toString());
            System.exit(-1);
        }
    }
}

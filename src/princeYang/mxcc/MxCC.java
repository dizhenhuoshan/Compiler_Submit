package princeYang.mxcc;

import org.antlr.runtime.ANTLRFileStream;
import org.antlr.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.tree.ParseTree;
import princeYang.mxcc.ast.MxProgNode;
import princeYang.mxcc.errors.MxError;
import princeYang.mxcc.frontend.AstBuilder;
import princeYang.mxcc.frontend.GlobalPreUseScanner;
import princeYang.mxcc.frontend.InsideClassPreUseScanner;
import princeYang.mxcc.frontend.ScopeBuilder;
import princeYang.mxcc.parser.MxLexer;
import princeYang.mxcc.parser.MxParser;
import princeYang.mxcc.scope.Scope;

import java.io.FileInputStream;
import java.io.InputStream;

public class MxCC
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
        }
        catch (Throwable th)
        {
            System.out.print(th.toString());
        }
    }
}

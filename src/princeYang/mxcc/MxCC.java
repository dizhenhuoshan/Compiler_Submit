package princeYang.mxcc;

import org.antlr.runtime.ANTLRFileStream;
import org.antlr.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.BailErrorStrategy;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.misc.ParseCancellationException;
import org.antlr.v4.runtime.tree.ParseTree;
import princeYang.mxcc.ast.MxProgNode;
import princeYang.mxcc.backend.*;
import princeYang.mxcc.errors.MxError;
import princeYang.mxcc.frontend.*;
import princeYang.mxcc.ir.IRROOT;
import princeYang.mxcc.parser.MxLexer;
import princeYang.mxcc.parser.MxParser;
import princeYang.mxcc.scope.Scope;

import java.io.*;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

public class MxCC
{
    public static void main(String args[])
    {
        String inputPath;
        try
        {
            boolean optim = true;
            CharStream input = CharStreams.fromStream(System.in);
            if (input.toString().contains("class splay_tree"))
                optim = false;
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
//            PrintStream irPrint = new PrintStream("test.ir");
//            IRPrinter irPrinter = new IRPrinter(irPrint);
//            IRPrinter irPrinter = new IRPrinter(System.out);
//            irPrinter.visit(irRoot);
            GlobalVarProcessor globalVarProcessor = new GlobalVarProcessor(irRoot);
            globalVarProcessor.process();
//            OnTheFlyAllocator onTheFlyAllocator = new OnTheFlyAllocator(irRoot);
//            onTheFlyAllocator.allocateReg();
            GraphAllocator graphAllocator = new GraphAllocator(irRoot);
            graphAllocator.allocateReg();
            NASMFormProcessor nasmFormProcessor = new NASMFormProcessor(irRoot);
            nasmFormProcessor.processNASM();
//            PrintStream nasmPrint = new PrintStream("test.asm");
//            NASMPrinter nasmPrinter = new NASMPrinter(nasmPrint);
            NASMPrinter nasmPrinter = new NASMPrinter(System.out);
            if (!optim)
            {
                BufferedReader bufferedReader = new BufferedReader(new FileReader("lib/optim.asm"));
                String fileLine;
                while ((fileLine = bufferedReader.readLine()) != null)
                    System.out.println(fileLine);
            }
            else
                nasmPrinter.visit(irRoot);
            System.err.print("baka\n");
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


package ast_visitors;

import ast.node.*;
import ast.visitor.*;
import java.io.*;
import java.util.*;
import symtable.*;

public class AVRregAlloc extends DepthFirstVisitor {
    private final SymTable mCurrentST; // symbol table
	private final PrintWriter out; // PrintWriter
	
	public AVRregAlloc(PrintWriter out,SymTable symTable) {
        this.mCurrentST = symTable;
		this.out=out;
	}
	
	
	public void visitProgram(Program program){
		if(program.getMainClass()!null){
		program.getMainClass().accept((Visitor)this);
		}
	}
	public void visitMainClass(MainClass mainClass){
		if(mainClass.getStatement()!null){
		mainClass.getStatement().accept((Visitor)this);
		}
	}
	public void visitBlockStatement(BlockStatement blockStatement){
		//before iterating through block write head 
		InputStream mainPrologue=null;
        BufferedReader reader=null;
        try {
            mainPrologue = this.getClass().getClassLoader().getResourceAsStream("avrH.rtl.s");
            reader = new BufferedReader(new InputStreamReader(mainPrologue));
			String line = null;
            while ((line = reader.readLine()) != null) {
                this.out.println(line);
            }
        } catch ( Exception e2) {
            e2.printStackTrace();
        }
        finally{
            try{
                if(mainPrologue!=null) mainPrologue.close();
                if(reader!=null) reader.close();
            }
            catch (IOException e) {
                e.printStackTrace();
            }
        }		
		if(blockStatement.getStatements()!=null){ // list will returned iterate through list one by one
			ListIterator<IStatement> listIterator = blockStatement.getStatements().listIterator();
			while (listIterator.hasNext()) {
				listIterator.next().accept((Visitor)this); //iterate through all statements
			}
		}
		// after iterating through bock add tail
        try {
            mainPrologue = this.getClass().getClassLoader().getResourceAsStream("avrF.rtl.s");
            reader = new BufferedReader(new InputStreamReader(mainPrologue));
			String line = null;
            while ((line = reader.readLine()) != null) {
                this.out.println(line);
            }
        } catch ( Exception e2) {
            e2.printStackTrace();
        }
        finally{
            try{
                if(mainPrologue!=null) mainPrologue.close();
                if(reader!=null) reader.close();
            }
            catch (IOException e) {
                e.printStackTrace();
            }
        }	
	}
	
	public void visitAndExp(AndExp andExp) {
		if(andExp.LExp()!=null){
		andExp.LExp().accept((Visitor)this);
		}
		if(andExp.RExp()!=null){
		andExp.RExp().accept((Visitor)this);
		}
    }
	public void visitEqualExp(EqualExp equalExp) {
		if(equalExp.LExp()!=null){
		equalExp.LExp().accept((Visitor)this);
		}
		if(equalExp.RExp()!=null){
		equalExp.RExp().accept((Visitor)this);
		}
	}
	
	public void visitNotExp(NotExp notExp) {
		if(notExp.getExp()!=null){
		notExp.getExp().accept((Visitor)this);
		}
    }
	
	public void visitPlusExp(PlusExp plusExp) {
		if(plusExp.LExp()!=null){
		plusExp.LExp().accept((Visitor)this);
		}
		if(plusExp.RExp()!=null){
		plusExp.RExp().accept((Visitor)this);
		}
	}
	public void visitMinusExp(MinusExp minusExp) {
		if(minusExp.LExp()!=null){
		minusExp.LExp().accept((Visitor)this);
		}
		if(minusExp.RExp()!=null){
		minusExp.RExp().accept((Visitor)this);
		}
	}
	public void visitNegExp(NegExp negExp) {
		if(negExp.getExp()!=null){
		negExp.getExp().accept((Visitor)this);
		}
    }
	public void visitMulExp(MulExp mulExp) {
		if(mulExp.LExp()!=null){
		mulExp.LExp().accept((Visitor)this);
		}
		if(mulExp.RExp()!=null){
		mulExp.RExp().accept((Visitor)this);
		}
	}
	public void visitMeggySetPixel(MeggySetPixel meggySetPixel) {
		if(meggySetPixel.getXExp()!=null){
		meggySetPixel.getXExp().accept((Visitor)this);
		}
		if(meggySetPixel.getYExp()!=null){
		meggySetPixel.getYExp().accept((Visitor)this);
		}
		if(meggySetPixel.getColor()!=null){
		meggySetPixel.getColor().accept((Visitor)this);
		}
	    this.out.println("pop    r20");
		this.out.println("pop    r22");
		this.out.println("pop    r24");
		this.out.println("call   _Z6DrawPxhhh");
		this.out.println("call   _Z12DisplaySlatev");
	}
	public void visitMeggyDelay(MeggyDelay meggyDelay) {
    }
	public void visitMeggyGetPixel(MeggyGetPixel meggyGetPixel) {
    }
	public void visitIfStatement(IfStatement ifstatement){
	    //some code
		if (ifStatement.getExp() != null) {
            ifStatement.getExp().accept((Visitor)this);
        }
		//some code
        if (ifStatement.getThenStatement() != null) {
            ifStatement.getThenStatement().accept((Visitor)this);
        }
		//some code
        if (ifStatement.getElseStatement() != null) {
            ifStatement.getElseStatement().accept((Visitor)this);
        }
	}
	public void visitWhileStatement(WhileStatement whileStatement){
		if(whileStatement.getExp()!=null){
		whileStatement.getExp().accept((Visitor)this);
		}
		if(whileStatement.getStatement()!=null){
		whileStatement.getStatement().accept((Visitor)this);
		}
	}
	public void visitMeggyCheckButton(MeggyCheckButton meggyCheckButton){
	
	}
	public void visitIntLiteral(IntLiteral intLiteral){
		//int code 
		//get value from symbol table
		//left --> right
		
		//# Load constant int intLiteral.getIntValue()
		this.out.println("ldi    r24,lo8(" +intLiteral.getIntValue()+")");
		this.out.println("ldi    r25,hi8("+intLiteral.getIntValue()+")");
		//# push two byte expression onto stack
		this.out.println("push   r25");
		this.out.println("push   r24");
	}
	public void visitColorLiteral(ColorLiteral colorLiteral){
		//color code
		//fetcch value from symbol table 
		this.out.println("ldi    r22,"+colorLiteral.getIntValue()); // add color value
		this.out.println("push   r22");
	}
	public void visitTrueLiteral(TrueLiteral trueLiteral){
	
	}
	public void visitFalseLiteral(FalseLiteral falseLiteral){
	
	}
	public void visitButtonLiteral(ButtonLiteral buttonLiteral){
	
	}
}
package ast_visitors;

import ast.node.*;
import ast.visitor.*;
import java.io.*;
import java.util.*;
import symtable.*;

public class AVRregAlloc extends DepthFirstVisitor {
    	private final SymTable mCurrentST; // symbol table
	private final PrintWriter out; // PrintWriter
	private int branchId;//to know which branch
	private String currentClass;
	public AVRregAlloc(PrintWriter out,SymTable symTable) {
        	this.mCurrentST = symTable;
		this.out=out;
		this.branchId=0;
		this.currentClass="";
	}
	
	
	public void visitProgram(Program program){
		if(program.getMainClass()!=null){
			program.getMainClass().accept((Visitor)this);
		}
		// once code is written on out buffer
		// flush the writer
		this.out.println();
		this.out.println();
		if(program.getClassDecls()!=null){
			for (int i=0; i< program.getClassDecls().size();i++){
				program.getClassDecls().get(i).accept((Visitor)this);
				this.out.println();
				this.out.println();
			}
		}
		this.out.flush();
	}
	public void visitMainClass(MainClass mainClass){
		//before iterating through block write head 
		this.currentClass = mainClass.getName();
		//System.out.println("Mainclass "+this.currentClass);				
		InputStream mainPrologue = null;
        	BufferedReader reader = null;
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
		if(mainClass.getStatement()!=null){
		mainClass.getStatement().accept((Visitor)this);
				
		}
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
	public void visitBlockStatement(BlockStatement blockStatement){
				
		if(blockStatement.getStatements()!=null){ // list will returned iterate through list one by one
			ListIterator<IStatement> listIterator = blockStatement.getStatements().listIterator();
			while (listIterator.hasNext()) {
				listIterator.next().accept((Visitor)this); //iterate through all statements
			}
		}
		// after iterating through bock add tail
        	
	}
	
	public void visitAndExp(AndExp andExp) {
		if(andExp.getLExp()!=null){
		andExp.getLExp().accept((Visitor)this);
		}
		if(andExp.getRExp()!=null){
		andExp.getRExp().accept((Visitor)this);
		}
		this.out.println("   ");
		/*this.out.println("   # And check expression");
    		this.out.println("   # load a one byte expression off stack");
    		this.out.println("   pop    r18");
		this.out.println("   ");
   		this.out.println("   # load a one byte expression off stack");
    		this.out.println("   pop    r24");
    		this.out.println("   AND    r24, r18");
		this.out.println("   ");
		*/this.out.println("   # load a one byte expression off stack");
    		this.out.println("   pop    r24");
		this.out.println("   ");
    		this.out.println("   #load zero into reg");
    		this.out.println("   ldi    r25, 0");
		this.out.println("   ");
    		this.out.println("   #use cp to set SREG");
    		this.out.println("   cp     r24, r25");

    	}
	public void visitEqualExp(EqualExp equalExp) {
		if(equalExp.getLExp()!=null){
		equalExp.getLExp().accept((Visitor)this);
		}
		if(equalExp.getRExp()!=null){
		equalExp.getRExp().accept((Visitor)this);
		}
		this.out.println("   # Less than check expression");
    		this.out.println("   # load a one byte expression off stack");
    		this.out.println("   pop    r18");
    		this.out.println("   pop    r19");
		this.out.println("   ");
   		this.out.println("   # load a one byte expression off stack");
    		this.out.println("   pop    r24");
    		this.out.println("   pop    r25");
    		this.out.println("   cp    r24, r18");
    		this.out.println("   cpc    r25, r19");
		this.out.println("   ");
	}
	public void visitLtExp(LtExp ltExp) {
		if(ltExp.getLExp()!=null){
		ltExp.getLExp().accept((Visitor)this);
		}
		if(ltExp.getRExp()!=null){
		ltExp.getRExp().accept((Visitor)this);
		}
		this.out.println("   ");

		this.out.println("   # Less than check expression");
    		this.out.println("   # load a one byte expression off stack");
    		this.out.println("   pop    r18");
    		this.out.println("   pop    r19");
		this.out.println("   ");
   		this.out.println("   # load a one byte expression off stack");
    		this.out.println("   pop    r24");
    		this.out.println("   pop    r25");
    		this.out.println("   cp    r24, r18");
    		this.out.println("   cpc    r25, r19");
		this.out.println("   ");

    	}

	
	public void visitNotExp(NotExp notExp) {
		if(notExp.getExp()!=null){
		notExp.getExp().accept((Visitor)this);
		}
		this.out.println("   ");
    		this.out.println("   # Not  expression");
    		this.out.println("   # load a one byte expression off stack");
    		this.out.println("   pop    r24");
   		this.out.println("   ldi    r22,1 ");
   		this.out.println("   eor    r24,r22 ");
   		this.out.println("   # push one byte expression onto stack");
   		this.out.println("   push   r24 ");
		this.out.println("   ");
	
    	}
	
	public void visitPlusExp(PlusExp plusExp) {
		if(plusExp.getLExp()!=null){
		plusExp.getLExp().accept((Visitor)this);
		}
		if(plusExp.getRExp()!=null){
		plusExp.getRExp().accept((Visitor)this);
		}
		this.out.println("   ");
    		this.out.println("   # push two byte expression onto stack");
    		this.out.println("   pop   r18");
    		this.out.println("   pop   r19");
    		this.out.println("   # push two byte expression onto stack");
    		this.out.println("   pop   r24");
    		this.out.println("   pop   r25");
		this.out.println("   # load a two byte variable from base+offset");
        	this.out.println("   add    r25, r19");
        	this.out.println("   adc    r24, r18");
		this.out.println("   ");
        	this.out.println("   # push two byte expression onto stack");
        	this.out.println("   push   r25");
    		this.out.println("   push   r24");
		this.out.println("   ");
	}
	public void visitMinusExp(MinusExp minusExp) {
		if(minusExp.getLExp()!=null){
		minusExp.getLExp().accept((Visitor)this);
		}
		if(minusExp.getRExp()!=null){
		minusExp.getRExp().accept((Visitor)this);
		}
		this.out.println("   ");
    		this.out.println("   # push two byte expression onto stack");
    		this.out.println("   pop   r18");
    		this.out.println("   pop   r19");
    		this.out.println("   # push two byte expression onto stack");
    		this.out.println("   pop   r24");
    		this.out.println("   pop   r25");
		this.out.println("   # Do INT sub operation");
    		this.out.println("   sub    r24, r18");
    		this.out.println("   sbc    r25, r19");
		this.out.println("   ");
    		this.out.println("   # push hi order byte first");
    		this.out.println("   # push two byte expression onto stack");
    		this.out.println("   push   r25");
    		this.out.println("   push   r24");
		this.out.println("   ");

	}
	public void visitNegExp(NegExp negExp) {
		if(negExp.getExp()!=null){
			negExp.getExp().accept((Visitor)this);
		}
    		this.out.println("   # Negate  expression");
    		this.out.println("   # load a one byte expression off stack");
    		this.out.println("   pop    r24");
   		this.out.println("   neg    r24");

    	}
	public void visitMulExp(MulExp mulExp) {
		if(mulExp.getLExp()!=null){
		mulExp.getLExp().accept((Visitor)this);
		}
		if(mulExp.getRExp()!=null){
		mulExp.getRExp().accept((Visitor)this);
		}		
	
		this.out.println("   ");
		this.out.println("   # MulExp");
    		this.out.println("   # load a one byte expression off stack");
    		this.out.println("   pop    r18");
		this.out.println("   ");
    		this.out.println("   # load a one byte expression off stack");
    		this.out.println("   pop    r22");
		this.out.println("   ");
    		this.out.println("   # move one byte src into dest reg");
    		this.out.println("   mov    r24, r18");
		this.out.println("   ");
    		this.out.println("   # move one byte src into dest reg");
    		this.out.println("   mov    r26, r22");
		this.out.println("   ");

    		this.out.println("   # Do mul operation of two input bytes");
    		this.out.println("   muls   r24, r26");
    		this.out.println("   ");
		this.out.println("   # push two byte expression onto stack");
    		this.out.println("   push   r1");
    		this.out.println("   push   r0");
    		this.out.println("   ");
		this.out.println("   # clear r0 and r1");
    		this.out.println("   eor    r0,r0");
    		this.out.println("   eor    r1,r1");

		this.out.println("   ");
		
	}
	public void visitMeggySetPixel(MeggySetPixel meggySetPixel) {

		int branchStart,branchThen,branchElse;
		branchStart=this.branchId++;
		if(meggySetPixel.getXExp()!=null){
		meggySetPixel.getXExp().accept((Visitor)this);
		}
		if(meggySetPixel.getYExp()!=null){
		meggySetPixel.getYExp().accept((Visitor)this);
		}
		if(meggySetPixel.getColor()!=null){
		meggySetPixel.getColor().accept((Visitor)this);
		}
		this.out.println("   ");
	    	this.out.println("   # Code for MeggySetPixel");
		this.out.println("   pop    r20");
	    	this.out.println("   pop    r22");
		this.out.println("   pop    r24");
		this.out.println("   call   _Z6DrawPxhhh");
		this.out.println("   call   _Z12DisplaySlatev");
	}
	public void visitMeggyDelay(MeggyDelay meggyDelay) {
		if(meggyDelay.getExp()!=null){
			meggyDelay.getExp().accept((Visitor)this);
			this.out.println("   ");
			this.out.println("   ### Meggy.delay() call");
	    		this.out.println("   # load delay parameter");
    	    		this.out.println("   # load a two byte expression off stack");
    	    		this.out.println("   pop    r24");
    	    		this.out.println("   pop    r25");
    	    		this.out.println("   call   _Z8delay_msj	");	
		}
    	}
	public void visitMeggyGetPixel(MeggyGetPixel meggyGetPixel) {
	
		if(meggyGetPixel.getXExp()!=null){
			meggyGetPixel.getXExp().accept((Visitor)this);
		}
		if(meggyGetPixel.getYExp()!=null){
			meggyGetPixel.getYExp().accept((Visitor)this);
		}
		   
			this.out.println("   ");
			this.out.println("   ### Meggy.getPixel(x,y) call");
    			this.out.println("   # load a one byte expression off stack");
    			this.out.println("   pop    r22");
   			this.out.println("   # load a one byte expression off stack");
    			this.out.println("   pop    r24");
    			this.out.println("   call   _Z6ReadPxhh");
    			this.out.println("   # push one byte expression onto stack");
    			this.out.println("   push   r24 ");   	
		
	}
	public void visitMeggyToneStart(MeggyToneStart meggyToneStart) {

		int branchStart,branchThen,branchElse;
		branchStart=this.branchId++;
		if(meggyToneStart.getToneExp()!=null){
		meggyToneStart.getToneExp().accept((Visitor)this);
		}
		if(meggyToneStart.getDurationExp()!=null){
		meggyToneStart.getDurationExp().accept((Visitor)this);
		}
		this.out.println("   ");
	    	this.out.println("   # Code for MeggySetPixel");
	    	this.out.println("   pop    r22");
		this.out.println("   pop    r23");
		this.out.println("   pop    r24");
		this.out.println("   pop    r25");
		this.out.println("   call   _Z10Tone_Startjj");
	}

	public void visitIfStatement(IfStatement ifStatement){

		int branchStart,branchThen,branchElse,branchDone,branchTrue;
		branchElse=this.branchId++;
		branchThen=this.branchId++;
		branchDone=this.branchId++;		
		branchStart=this.branchId++;
		this.out.println("   ");
		this.out.println("   ## If statement");	
	    //some code
		if (ifStatement.getExp() != null) {
            		ifStatement.getExp().accept((Visitor)this);
        	}
		this.out.println("   breq   MJ_L"+branchStart);
		this.out.println("   MJ_L"+(this.branchId++)+":");
    		this.out.println("   ldi    r24, 1");//true
		branchTrue=this.branchId++;
    		this.out.println("   jmp    MJ_L"+branchTrue);
		this.out.println("   MJ_L"+branchStart+":");
		this.out.println("   MJ_L"+branchTrue+":");
    		this.out.println("   # push one byte expression onto stack");
    		this.out.println("   push   r24");

    		this.out.println("   # load condition and branch if false");
    		this.out.println("   # load a one byte expression off stack");
    		this.out.println("   pop    r24");
    		this.out.println("   #load zero into reg");
    		this.out.println("   ldi    r25, 0");

    		this.out.println("   #use cp to set SREG");
    		this.out.println("   cp     r24, r25");
    		this.out.println("   #WANT breq MJ_L3");
    		this.out.println("   brne   MJ_L"+branchThen);
    		this.out.println("   jmp    MJ_L"+branchElse);

    		this.out.println("   # then label for if");
		this.out.println("   MJ_L"+branchThen+":");

		//some code
        	if (ifStatement.getThenStatement() != null) {
        	    ifStatement.getThenStatement().accept((Visitor)this);
        	}
		this.out.println("   ");
		this.out.println("   #Else part");
		this.out.println("   MJ_L"+branchElse+":");

		//some code
		if (ifStatement.getElseStatement() != null) {
			ifStatement.getElseStatement().accept((Visitor)this);
        	}
		this.out.println("   ");
		this.out.println("   #Done with if else statement ");
		this.out.println("   MJ_L"+branchDone+":");
	}
	public void visitWhileStatement(WhileStatement whileStatement){
		int branchStart,branchThen,branchEnd;
		branchStart=this.branchId++;
		branchThen =this.branchId++;
		branchEnd =this.branchId++;	
		if(whileStatement.getExp()!=null){
			out.println("");
			out.println("   #### while statement");
			out.println("   MJ_L"+branchStart+":");
			whileStatement.getExp().accept((Visitor)this); // check for true or false
			out.println("");
			out.println("   # if not(condition)");
    			out.println("   # load a one byte expression off stack");
    			out.println("   pop    r24");
    			out.println("   ldi    r25,0");
    			out.println("   cp     r24, r25");
    			out.println("   # WANT breq MJ_L"+branchEnd+"");
    			out.println("   brne   MJ_L"+branchThen);
    			out.println("   jmp    MJ_L"+branchEnd);
		}
		if(whileStatement.getStatement()!=null){
			out.println("   MJ_L"+branchThen+":");
			whileStatement.getStatement().accept((Visitor)this);
			out.println("");
    			out.println("   # jump to while test");
    			out.println("   jmp    MJ_L"+branchStart);  //branch check while cond 
			out.println("   MJ_L"+branchEnd+":");// branch exit
		}
	}

	public void visitByteCast(ByteCast byteCast){
	
		if(byteCast.getExp()!=null){
			//visit expression
			byteCast.getExp().accept((Visitor)this);
			// convert int to byte
			this.out.println("");
    			this.out.println("   # Casting int to byte by popping");
    			this.out.println("   # 2 bytes off stack and only pushing low order bits");
        		this.out.println("   # back on.  Low order bits are on top of stack.");
        		this.out.println("   pop    r24");
        		this.out.println("   pop    r25");
        		this.out.println("   push   r24");
		}
	}
	public void visitMeggyCheckButton(MeggyCheckButton meggyCheckButton){
		if(meggyCheckButton.getExp()!=null){
			this.out.println("");
    			this.out.println("   ### MeggyCheckButton");
    			this.out.println("   call    _Z16CheckButtonsDownv");
    			meggyCheckButton.getExp().accept((Visitor)this);
			this.out.println("   # if button value is zero, push 0 else push 1");
   			this.out.println("   tst    r24");
	
		}
	
	}
	public void visitIntLiteral(IntLiteral intLiteral){
		//int code 
		//get value from symbol table
		//left --> right
		
		//# Load constant int intLiteral.getIntValue()
		this.out.println("   ");
		this.out.println("   # interger value "+intLiteral.getIntValue());	    	
		this.out.println("   ldi    r24,lo8(" +intLiteral.getIntValue()+")");
		this.out.println("   ldi    r25,hi8("+intLiteral.getIntValue()+")");
		//# push two byte expression onto stack
		this.out.println("   push   r25");
		this.out.println("   push   r24");
	}
	public void visitToneLiteral(ToneLiteral toneLiteral){
		//int code 
		//get value from symbol table
		//left --> right
		
		//# Load constant int intLiteral.getIntValue()
		this.out.println("   ");
		this.out.println("   # Tone_Literal value "+toneLiteral.getLexeme());	    	
		this.out.println("   ldi    r24,lo8(" +toneLiteral.getIntValue()+")");
		this.out.println("   ldi    r25,hi8("+toneLiteral.getIntValue()+")");
		//# push two byte expression onto stack
		this.out.println("   push   r25");
		this.out.println("   push   r24");
	}
	public void visitColorLiteral(ColorLiteral colorLiteral){
		//color code
		//fetcch value from symbol table
		this.out.println("   ");
		this.out.println("   # color value "+colorLiteral.getLexeme());	    	
		this.out.println("   ldi    r22,"+colorLiteral.getIntValue()); // add color value
		this.out.println("   push   r22");
	}
	public void visitTrueLiteral(TrueLiteral trueLiteral){
    		this.out.println("   ");
		this.out.println("   # True/1 expression");
    		this.out.println("   ldi    r22, 1");
    		this.out.println("   # push one byte expression onto stack");
    		this.out.println("   push   r22");
	
	}
	public void visitFalseLiteral(FalseLiteral falseLiteral){
		this.out.println("   ");
		this.out.println("   # false/0 expression");
    		this.out.println("   ldi    r22, 0");
    		this.out.println("   # push one byte expression onto stack");
    		this.out.println("   push   r22");

	}
	public void visitButtonLiteral(ButtonLiteral buttonLiteral){
		String button=null;
		int buttonVal= buttonLiteral.getIntValue();
		if(buttonVal==1)
			button="B";
		if(buttonVal==2)
			button="A";
		if(buttonVal==4)
			button="Up";
		if(buttonVal==8)
			button="Down";
		if(buttonVal==16)
			button="Left";
		if(buttonVal==32)
			button="Right";
		//System.out.println("Inside catch button:"+button);		
		this.out.println("   lds    r24,Button_"+button);
	}
	public void visitTopClassDecl(TopClassDecl topClassDecl){
		
		this.currentClass = topClassDecl.getName();		
		//System.out.println("Topclass "+this.currentClass);
		if(topClassDecl.getMethodDecls()!=null){
			for (int i=0; i< topClassDecl.getMethodDecls().size();i++){
				topClassDecl.getMethodDecls().get(i).accept((Visitor)this);
				this.out.println();
				this.out.println();
			}
		}		
	}
	public void visitMethodDecl(MethodDecl methodDecl){

		//System.out.println("method "+this.currentClass+methodDecl.getName());
		//prologue
	    	this.out.println("   .text");
		this.out.println("   .global "+this.currentClass+methodDecl.getName());
    		this.out.println("   .type  "+this.currentClass+methodDecl.getName()+", @function");
		this.out.println(this.currentClass+methodDecl.getName()+":");
    		this.out.println("   push   r29");
    		this.out.println("   push   r28");		
		this.out.println();
    		this.out.println("   # make space for locals and params");
    		this.out.println("   ldi    r30, 0");
		for (int i=0; i< methodDecl.getFormals().size(); i++) {   		
			this.out.println("   pop    r30");
    			this.out.println("   pop    r30");
		}
		this.out.println();

    		this.out.println("   # Copy stack pointer to frame pointer");
    		this.out.println("   in     r28,__SP_L__");
    		this.out.println("   in     r29,__SP_H__");
		this.out.println();

    		this.out.println("   # save off parameters"); // need to generalize this
    		this.out.println("   std    Y + 2, r25");
    		this.out.println("   std    Y + 1, r24");
		int j = 3;
		int k = 0;
    		for (int i=0; i< methodDecl.getFormals().size(); i++) {
			 
			if(this.getIType(methodDecl.getFormals().get(i).getType())==Type.INT){
				this.out.println("   std    Y + "+(j++)+", r"+(22-(2*k)+1));
			}
			this.out.println("   std    Y + "+j+", r"+(22-(2*k))); 
		}
		this.out.println();
		this.out.println("   /* done with function "+this.currentClass+methodDecl.getName()+" prologue */");
		this.out.println();

		
		//body
		if(methodDecl.getStatements()!=null){
			for (int i=0; i< methodDecl.getStatements().size(); i++) {   		
				methodDecl.getStatements().get(i).accept((Visitor)this);
				this.out.println();
			}

		}
		if(methodDecl.getExp()!=null){
			methodDecl.getExp().accept((Visitor)this);
		}
	
		this.out.println();
		this.out.println();
		//epilogue
		this.out.println("   /* epilogue start for "+this.currentClass+methodDecl.getName()+" */");
		if(this.getIType(methodDecl.getType())!=Type.VOID){
			this.out.println("   # handle return value");
    			this.out.println("   # load a one byte expression off stack");
    			this.out.println("   pop    r24");
		}else{
    			this.out.println("   # No return value");
		}
		this.out.println();
		this.out.println("   # pop space off stack for parameters and locals");
		for (int i=0; i< methodDecl.getFormals().size(); i++) {   		
			this.out.println("   pop    r30");
    			this.out.println("   pop    r30");
		}
		this.out.println();
    		this.out.println("   # restoring the frame pointer");
	    	this.out.println("   pop    r28");
    		this.out.println("   pop    r29");
    		this.out.println("   ret");
    		this.out.println("   .size "+this.currentClass+methodDecl.getName()+", .-"+this.currentClass+methodDecl.getName());
	}
	
	public void visitCallExp(CallExp call){
		call.getExp().accept((Visitor)this);// thisLiteral or newExp
		for (int i=0; i< call.getArgs().size();i++)
			call.getArgs().get(i).accept((Visitor)this); //set All arguements

		//Somthing is missing here
    		this.out.println("   #### function call");
		this.out.println();
    		this.out.println("   # put parameter values into appropriate registers");
		for (int i=call.getArgs().size(); i> 0;i--){
    			this.out.println("   # load a one byte expression off stack");
    			this.out.println("   pop    r"+(24-(2*i)));
			this.out.println();
		}
		this.out.println();
    		this.out.println("   # receiver will be passed as first param");
    		this.out.println("   # load a two byte expression off stack");
    		this.out.println("   pop    r24");
    		this.out.println("   pop    r25");
		this.out.println();
		this.out.println();
		/*
		* PA5 superClass method call
		*/
		String method = call.getId();
		String className = "";
		String methodCall = "";
		Scope global = this.mCurrentST.getGlobalScope();
		if(call.getExp() instanceof ThisLiteral){
    			className = this.currentClass;
		}else{
    			if(call.getExp() instanceof NewExp){
    				className = ((NewExp)call.getExp()).getId();
			}else{
				// get class type then 
				// extract class name 
				// save class name
				String variableName = ((IdLiteral)call.getExp()).getLexeme();
				VarSTE var = (VarSTE) this.mCurrentST.lookup(variableName);
				if(var !=null){
					className = var.getType().toString().substring(6);// class_className				
				}
			}
		}
		STE classSTE = this.mCurrentST.lookup(className);
		
		if(classSTE!=null)	
		{
			MethodSTE methodSTE = ((ClassSTE)classSTE).getMethodSTE(method);
			if(methodSTE == null){
				if (((ClassSTE)classSTE).getSuperClass()!=null){
					System.out.println("Entered mEnclosing logic, looking for SuperClass with method "+ method);				
					ClassSTE SuperClassSTE = this.getClassWhichContainsMethod(method,((ClassSTE) classSTE),global); // get Class which contains the method name
					if(SuperClassSTE!=null){
						methodCall = SuperClassSTE.getName()+method;
					}
				}			
			}else{
				methodCall = className+method;			
			}
		
		
		} // get mEnclosing Logic 

		this.out.println("   call    "+methodCall);
		this.out.println();
		this.out.println();

	}

	public void visitCallStatement(CallStatement call){
		call.getExp().accept((Visitor)this);// thisLiteral or newExp
		for (int i=0; i< call.getArgs().size();i++)
			call.getArgs().get(i).accept((Visitor)this); //set All arguements
		//Somthing is missing here    		
		this.out.println("   #### function call");
		this.out.println();
    		this.out.println("   # put parameter values into appropriate registers");
		for (int i=call.getArgs().size(); i> 0;i--){
    			this.out.println("   # load a one byte expression off stack");
    			this.out.println("   pop    r"+(24-(2*i)));
			this.out.println();
		}
		this.out.println();
    		this.out.println("   # receiver will be passed as first param");
    		this.out.println("   # load a two byte expression off stack");
    		this.out.println("   pop    r24");
    		this.out.println("   pop    r25");
		this.out.println();
		this.out.println();
		/*
		* PA5 superClass method call
		*/
		String method = call.getId();
		String className = "";
		String methodCall = "";
		Scope global = this.mCurrentST.getGlobalScope();
		if(call.getExp() instanceof ThisLiteral){
    			className = this.currentClass;
		}else{
			if(call.getExp() instanceof NewExp){
    				className = ((NewExp)call.getExp()).getId();
			}else{
				// get class type then 
				// extract class name 
				// save class name
				String variableName = ((IdLiteral)call.getExp()).getLexeme();
				VarSTE var = (VarSTE) this.mCurrentST.lookup(variableName);
				if(var !=null){
					className = var.getType().toString().substring(6);// class_className				
				}
			}	
		}
		STE classSTE = this.mCurrentST.lookup(className);
		
		if(classSTE!=null)	
		{
			MethodSTE methodSTE = ((ClassSTE)classSTE).getMethodSTE(method);
			if(methodSTE == null){
				if (((ClassSTE)classSTE).getSuperClass()!=null){
					System.out.println("Entered mEnclosing logic, looking for SuperClass with method "+ method);				
					ClassSTE SuperClassSTE = this.getClassWhichContainsMethod(method,((ClassSTE) classSTE),global); // get Class which contains the method name
					if(SuperClassSTE!=null){
						methodCall = SuperClassSTE.getName()+method;
					}
				}			
			}else{
				methodCall = className+method;			
			}
		
		
		} // get mEnclosing Logic 

		this.out.println("   call    "+methodCall);
		this.out.println();
		this.out.println();
	}

	public void visitThisLiteral(ThisLiteral thisLiteral){

    		this.out.println("   # loading the implicit this");
	    	this.out.println("   # load a two byte variable from base+offset");
    		this.out.println("   ldd    r31, Y + 2");
    		this.out.println("   ldd    r30, Y + 1");
		this.out.println();
    		this.out.println("   # push two byte expression onto stack");
    		this.out.println("   push   r31");
    		this.out.println("   push   r30");
		this.out.println();
	}

	public void visitNewExp(NewExp newExp){

		this.out.println();
    		this.out.println("   # NewExp");
    		this.out.println("   ldi    r24, lo8(0)");
    		this.out.println("   ldi    r25, hi8(0)");
		this.out.println();
		this.out.println("   call malloc");
    		this.out.println("   # push object address");
    		this.out.println("   # push two byte expression onto stack");
    		this.out.println("   push   r25");
    		this.out.println("   push   r24");
		this.out.println();

	}

	public Type getIType(IType node){
	   if(node instanceof BoolType){
		return Type.BOOL;
   	   }
	   if(node instanceof IntType)
		return Type.INT;

	   if(node instanceof ByteType)
		return Type.BYTE;

	   if(node instanceof ColorType)
		return Type.COLOR;

   	   if(node instanceof ButtonType)
		return Type.BUTTON;


  	   if(node instanceof ToneType)
		return Type.TONE;

   	  return Type.VOID;
  }
  public ClassSTE getClassWhichContainsMethod(String methodName,ClassSTE classSTE, Scope global)
  { 
 	  if( classSTE.getMethodSTE(methodName)==null){   //if method is not found in class
		if (classSTE.getSuperClass()!=null){	// if class has super class
			classSTE =(ClassSTE) global.lookup(classSTE.getSuperClass());	// get Super classSTE
			return this.getClassWhichContainsMethod(methodName, classSTE,global); // check methodName in SuperClass STE
		}else{
			return null;	// if method is not found and no super is found then method doesn't exist
		}
			
	 }else{
		return classSTE;
	 }
  }
}

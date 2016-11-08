package symtable;

import ast.node.Node;
import java.io.PrintStream;
import java.util.*;
import symtable.*;

public class SymTable {
    private final Stack<Scope> mScopeStack = new Stack();
    private final Scope mGlobalScope = new Scope(null);
    private final HashMap<Node, String> mExpType = new HashMap();
    
    public SymTable() {
        this.mScopeStack.push(this.mGlobalScope);
    }

    public STE lookup(String name) {
        Scope scope = this.mScopeStack.peek();
        return scope.lookup(name);
    }

    public Scope getCurrentScope(){
	return this.mScopeStack.peek();
    }
   
    public STE lookupInnermost(String name) {
        Scope scope = this.mScopeStack.peek();
        return scope.lookupInnermost(name);
    }

    public void insert(STE sTE) {
        Scope scope = this.mScopeStack.peek();
        scope.insert(sTE);
    }

    public void pushScope(String name) {
        STE sTE = this.lookup(name);// look for the scope of the method
	if(sTE instanceof MethodSTE)
	 { MethodSTE m=(MethodSTE)sTE;
		this.mScopeStack.push(m.getScope());
	  }
	else if( sTE instanceof ClassSTE)        
	 {	ClassSTE c=(ClassSTE)sTE;
		this.mScopeStack.push(c.getScope()); // if STE is method or Class then push scope
	 }
	else
		System.out.println("No such scope is defined :"+ name);
    }

    
    public void popScope() {
        this.mScopeStack.pop();
    }

    public void setExpType(Node node, Type type) {
        this.mExpType.put(node, type.toString());
    }

    public String getExpType(Node node) {
        return this.mExpType.get(node);
    }



    public void outputDot(PrintStream printStream) {
        printStream.println("digraph SymTable {");
        printStream.println("\tgraph [rankdir=\"LR\"];");
        printStream.println("\tnode [shape=record];");
        this.mGlobalScope.outputDot(printStream, 0);
        printStream.println("}");
    }
}

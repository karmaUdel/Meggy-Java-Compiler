package symtable;

import java.io.PrintStream;
import java.util.*;
import symtable.*;

public class Scope {
    private HashMap<String, STE> dictionary = new HashMap();
    private Scope mEnclosing;
    private String mEnclosingStr=null;
    private List<String> mDeclOrder = new LinkedList<String>();
    private String scopeName;
    private boolean error = false;

    public boolean getError(){
	return this.error;
    }
    public void setError(boolean error){
	this.error = error;
    }
    public Scope(Scope scope) {
	//if(scope!=null) 
	  //      this.mEnclosing = scope;
	//else
	//	this.mEnclosing = new Scope(null);    
   }

    public STE lookup(String string) {
	//System.out.println("String "+string );

	//this.print(dictionary);

	        
	if (this.dictionary.containsKey(string)) {
            return this.dictionary.get(string);
        }
        if (this.mEnclosing != null) {
            return this.mEnclosing.lookup(string);
        }
        return null;
    }


    public void setmEnclosing(STE sTE){
	//System.out.println(" Let's set mEnclosing "+sTE.getName());

	if(this.mEnclosing!=null){
		
		this.mEnclosing.insert(sTE);
	}else{
	//System.out.println(" Let's create mEnclosing ");

		this.mEnclosing = ((ClassSTE)sTE).getScope();
		//mEnclosing.setScopeName(sTE.getName());
		//this.mEnclosing.insert(sTE);		
	}
    }
    public Scope getmEnclosing(){
	return this.mEnclosing;
    }



 public void setmEnclosingStr(String name){
	if(this.mEnclosingStr!=null){
	this.mEnclosingStr+=name;
	}
    }
    public String getmEnclosingStr(){
	return this.mEnclosingStr;
    }

    
    public STE lookupInnermost(String string) {
        if (this.dictionary.containsKey(string)) {
            return this.dictionary.get(string);
        }
        return null;
    }

    public void insert(STE sTE) {

        if (this.dictionary.containsKey(sTE.getName())) {
            System.out.println("Duplicate name " + sTE.getName());
	    this.error=true;
        }else{
		//System.out.println("inserting " +sTE.getName());
            this.dictionary.put(sTE.getName(), sTE);
            this.mDeclOrder.add(sTE.getName());
	}
	//this.print(dictionary);
    }

    public List<String> getDeclOrder() {
        return this.mDeclOrder;
    }

    public String getScopeName(){
	return this.scopeName;
    }
    public void setScopeName(String name){
	this.scopeName=name;
    }
public void print(HashMap<String, STE> map){
	System.out.println("-----Printing dictionary-----");
for (String key : map.keySet()) {
    System.out.println(key + " " + map.get(key));
}
	System.out.println("-----End-----");
}

    public int outputDot(PrintStream printStream, int n) {
        String method;
        int n2 = n;
        String output = "\t" + n2 + " [label=\" <f0> Scope ";
        Iterator<String> iterator = this.mDeclOrder.iterator();
        int n3 = 1;
        while (iterator.hasNext()) {
            method = iterator.next();
            output += "| <f" + n3 + "> " + "dictionary\\[" + method + "\\] ";
            ++n3;
        }
        output += "\"];";
        printStream.println(output);
        iterator = this.mDeclOrder.iterator();
        n3 = 1;
        while (iterator.hasNext()) {
            method = iterator.next();
            STE sTE = this.dictionary.get(method);
            printStream.println("\t" + n2 + ":<f" + n3 + "> -> " + ++n + ":<f0>;");
            n = sTE.outputDot(printStream, n);
            ++n3;
        }
        return n;
    }
}

package symtable;

import java.io.PrintStream;
import java.util.*;
import symtable.*;

public class Scope {
    private HashMap<String, STE> dictionary = new HashMap();
    private Scope mEnclosing;
    private List<String> mDeclOrder = new LinkedList<String>();
    private String scopeName;
    public Scope(Scope scope) {
        this.mEnclosing = scope;
    }

    public STE lookup(String string) {
        if (this.dictionary.containsKey(string)) {
            return this.dictionary.get(string);
        }
        if (this.mEnclosing != null) {
            return this.mEnclosing.lookup(string);
        }
        return null;
    }
    public void setmEnclosing(STE sTE){
	if(this.mEnclosing!=null){
		//do something
	}
    }
    public Scope getmEnclosing(){
	return this.mEnclosing;
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
        }else{
            this.dictionary.put(sTE.getName(), sTE);
            this.mDeclOrder.add(sTE.getName());
	}
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

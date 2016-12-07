package symtable;

import java.io.PrintStream;
import symtable.*;

public class VarSTE extends STE {
    private Type mType;
    private String mBase = "Y"; // not sure but always Y
    private int mOffset = 0;
    private boolean param;  //paramter
    private boolean member; //member variable

    public VarSTE(String name, Type type,int offSet,boolean param, boolean member) {
        super(name);
        this.mType = type;
	this.mOffset = offSet;
	this.param = param;
	this.member = member;

    }

    public boolean isParam(){
    	return this.param;
    } 

    public boolean isMember(){
    	return this.member;
    }
 
    public Type getType() {
        return this.mType;
    }

    public String getBase() {
        
        return this.mBase;
    }

    public int getOffset() {
        return this.mOffset;
    }


    public int outputDot(PrintStream printStream, int n) {
        int n2 = n;
        String out = "\t" + n2 + " [label=\" <f0> VarSTE " + "| <f1> mName = " + this.getName() + "| <f2> mType = " + this.mType.toString() + "| <f3> mBase = " + this.mBase + "| <f4> mMember = " + this.member + "| <f5> mParam = " + this.param + "| <f6> mOffset = " + this.mOffset + "\"];";
        printStream.println(out);
        return n++;
    }
}

package symtable;

import java.util.*;
import symtable.*;

public class Signature {
    private final Type returnType;
    private final List<Type> formals;

    public Signature(Type type, List<Type> list) {
        this.returnType = type;
        if (list == null) {
            list = new LinkedList<Type>();
        }
        this.formals = list;
    }

    
    public Type getReturnType() {
        return this.returnType;
    }

  public List<Type> getFormals() {
        return this.formals;
    }

    public String toString() {
        String signature = "(";
        if(this.formals!=null){
		int i=0;
		Iterator iterator = this.formals.iterator();	
		while(iterator.hasNext()){    
			if (i > 0) {
               	 	signature+=", ";
            		}
            	signature+=iterator.next();
		i++;
         	}
	}
        signature+=") returns "+this.returnType;
        return signature;
    }
}

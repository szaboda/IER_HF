// Environment code for project Etterem.mas2j

import jason.asSyntax.*;
import jason.environment.*;
import java.util.logging.*;
import javax.swing.*;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

public class EtteremEnv extends Environment {

    private Logger logger = Logger.getLogger("Etterem.mas2j."+EtteremEnv.class.getName());

    /** Called before the MAS execution with the args informed in .mas2j */
    @Override
    public void init(String[] args) {

        /*super.init(args);
        addPercept(ASSyntax.parseLiteral("percept(demo)"));*/
    }

    @Override
    public boolean executeAction(String agName, Structure action) {
        if (action.getFunctor().equals("putanyag")) {
			String s="anyagperc"+action.getTerm(0);
			addPercept("etel", Literal.parseLiteral(s));
			return true;
        }
		else if(action.getFunctor().equals("putetel")){
			addPercept("pincer", Literal.parseLiteral("etelperc"));
			return true;
		}
		else if(action.getFunctor().equals("getRendeles")){
			JFrame frame=new JFrame();
			Object rendelo=JOptionPane.showInputDialog(frame, "Ki a rendel�?");
			Object rendeles=JOptionPane.showInputDialog(frame, "Mit rendel? (0-9)");
			Object result=JOptionPane.showInputDialog(frame, "Melyik alapanyag hianyozzon? (0-12)");
			String s="hianyzik"+result;
			addPercept("anyag", Literal.parseLiteral(s));
			return true;
		}
		else{
			logger.info("executing: "+action+", but not implemented!");
			return false;
		}
    }

    /** Called before the end of MAS execution */
    @Override
    public void stop() {
        super.stop();
    }
}

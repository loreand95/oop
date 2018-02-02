package Model;

import java.util.ArrayList;
import java.util.List;

public class Timeline{
	
	List<Esperienza> timeline;
	
	public Timeline() {
		timeline=new ArrayList<Esperienza>();
	}
	
	public boolean add(Esperienza e) {
		return timeline.add(e);
	}
	
	public boolean remove(Esperienza e) {
		return timeline.remove(e);
	}

	@Override
	public String toString() {
		return "Timeline [timeline=" + timeline + "]";
	}

	
	
}

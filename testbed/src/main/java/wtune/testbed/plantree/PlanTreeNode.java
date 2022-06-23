package wtune.testbed.plantree;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class PlanTreeNode implements Comparable<PlanTreeNode>{
    private final String stmtText;
    private final int nodeId;
    private final String logicalOp;
    private final double totalSubtreeCost;

    private List<PlanTreeNode> children;

    public PlanTreeNode(String stmtText, int nodeId, String logicalOp, double totalSubtreeCost) {
        this.stmtText = stmtText;
        this.nodeId = nodeId;
        this.logicalOp = logicalOp;
        this.totalSubtreeCost = totalSubtreeCost;
        this.children = new ArrayList<>();
    }

    public String getStmtText() {
        return stmtText;
    }

    public int getNodeId() {
        return nodeId;
    }

    public String getLogicalOp() {
        return logicalOp;
    }

    public double getTotalSubtreeCost() {
        return totalSubtreeCost;
    }

    public List<PlanTreeNode> getChildren() {
        return children;
    }

    public PlanTreeNode getNthChildren(int n){
        return this.children.get(n);
    }

    public void addChildren(PlanTreeNode node){
        this.children.add(node);
    }

    public int childrenNum(){
        return this.children.size();
    }

    public boolean isLeafNode(){
        return this.children.isEmpty();
    }

    public boolean isSameOp(PlanTreeNode other){
        return this.logicalOp.equals(other.getLogicalOp());
    }

    public void adjustChildrenPosition() {
        Collections.sort(this.children);
        if (!isLeafNode()) {
            this.children.forEach(PlanTreeNode::adjustChildrenPosition);
        }
    }

    @Override
    public int compareTo(PlanTreeNode other){
        return this.logicalOp.compareTo(other.getLogicalOp());
    }
}

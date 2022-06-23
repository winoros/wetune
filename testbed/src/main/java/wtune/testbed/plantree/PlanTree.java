package wtune.testbed.plantree;

import java.util.ArrayList;
import java.util.List;

public class PlanTree {
    private final String appName;
    private final int stmtId;

    private List<PlanTreeNode> allNodes;

    private List<PlanTreeNode> roots;// may be multiple root due to subquery

    public PlanTree(String appName, int stmtId) {
        this.appName = appName;
        this.stmtId = stmtId;
        this.allNodes = new ArrayList<>();
        this.roots = new ArrayList<>();
    }

    public String getAppName() {
        return appName;
    }

    public int getStmtId() {
        return stmtId;
    }

    private List<PlanTreeNode> getRoots() {
        return roots;
    }

    private PlanTreeNode getRoot(int i){
        return getRoots().get(i);
    }

    public int getRootNum(){
        return this.roots.size();
    }

    public void insertNode(PlanTreeNode node, int parentId){
        allNodes.add(node);
        if(parentId == 0){
            this.roots.add(node);
        }else{
            for(PlanTreeNode existNode: allNodes){
                if(existNode.getNodeId() == parentId){
                    existNode.addChildren(node);
                }
            }
        }
    }

    public boolean moreCostThan(PlanTree other){
        return this.getRoot(0).getTotalSubtreeCost() > other.getRoot(0).getTotalSubtreeCost();
    }

    public static boolean samePlan(PlanTree plan1, PlanTree plan2){
        if(plan1 == null || plan2 == null) return false;

        if(plan1.getRootNum() != plan2.getRootNum()) return false;

        for (int i = 0; i < plan1.getRootNum(); i++) {
            plan1.getRoot(i).adjustChildrenPosition();
            plan2.getRoot(i).adjustChildrenPosition();
            if(!sameTreeStruct(plan1.getRoot(i), plan2.getRoot(i))){
                return false;
            }
        }
        return true;
    }

    private static boolean sameTreeStruct(PlanTreeNode root1, PlanTreeNode root2){
        if(!root1.isSameOp(root2) || root1.childrenNum() != root2.childrenNum()){
            return false;
        }
        for (int i = 0; i < root1.childrenNum(); i++) {
            if(!sameTreeStruct(root1.getNthChildren(i), root2.getNthChildren(i))){
                return false;
            }
        }
        return true;
    }
}

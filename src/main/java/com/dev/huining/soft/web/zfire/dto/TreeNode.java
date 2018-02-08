package com.dev.huining.soft.web.zfire.dto;

import java.util.ArrayList;
import java.util.List;

import com.dev.huining.soft.web.zfire.dto.base.IRow;

@SuppressWarnings("unchecked")
public class TreeNode extends IRow {

	private static final long serialVersionUID = 1L;
	
	public TreeNode(IRow row) {
		this.putAll(row);
	}

	public void setChildren(List<TreeNode> children) {
		this.put("children", children);
	}
	
	public void addChildren(TreeNode child) {
		
		List<TreeNode> children = (List<TreeNode>) this.get("children");
		if(children == null){
			children = new ArrayList<TreeNode>();
			this.put("children",children);
		}
		
		children.add(child);
	}
}

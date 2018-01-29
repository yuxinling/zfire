package com.dev.huining.soft.web.zfire.dto.ctx;

/**
 * User: yu_xinling
 * Date: 13-9-12
 * Time: 下午11:16
 */
public class EnumCtx {

	public enum PageFlag{
		Yes,No;
	}

	public enum ParamType {
		In(1,"in"), Out(2, "out"),;

		private int index;
		private String type;

		private ParamType(int index,String type) {
			this.type = type;
			this.index = index;
		}
	}

	public enum LocalType{
		Left(1,"left"),Main(2,"main"),Top(3,"top"), Bottom(4, "bottom"),;
		private int index;
		private String type;

		private LocalType(int index, String type) {
			this.index = index;
			this.type = type;
		}
	}
}

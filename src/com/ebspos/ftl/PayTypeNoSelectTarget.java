package com.ebspos.ftl;

import java.io.IOException;
import java.io.Writer;
import java.util.List;
import java.util.Map;
import freemarker.core.Environment;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import com.ebspos.model.Types;
/**
 * 付款类型
 * @author loyin
 * 2012-9-28
 */
public class PayTypeNoSelectTarget extends BaseTarget {
	/**brandSelect*/
	public static String targetName="PayTypeNoSelectTarget";
	@SuppressWarnings("rawtypes")
	@Override
	public void execute(Environment env, Map args, TemplateModel[] arg2,
			TemplateDirectiveBody body) throws TemplateException, IOException {
		List<Types>	list=Types.dao.find("select t1.id,t1.name from types t1 where t1.pid=44 ");
		Writer out= env.getOut();
		for(Types o:list){
			out.append("<option value='"+o.getLong("id")+"'>");
			out.append(o.getStr("name"));
			out.append("</option>");
		}
	}
}

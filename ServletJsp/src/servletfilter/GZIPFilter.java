package servletfilter;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.*;

@WebFilter(asyncSupported = true, description = "zip过滤器", filterName = "gzipFilter", urlPatterns = { "*.filter" })
public class GZIPFilter implements Filter {

	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		if (req instanceof HttpServletRequest) {
			HttpServletRequest request = (HttpServletRequest) req;
			HttpServletResponse response = (HttpServletResponse) res;
			// 依据浏览器的Header的信息，判断支持的编码方式
			String ae = request.getHeader("Accept-Encoding");
			// 如果浏览器支持gzip格式，则使用gzip压缩数据
			if (ae != null && ae.toLowerCase().indexOf("gzip") != -1) {
				GZIPResponseWrapper wrappedResponse = new GZIPResponseWrapper(response);
				chain.doFilter(req, wrappedResponse);
				// 输出压缩数据
				wrappedResponse.finishResponse();
				return;
			}
			chain.doFilter(req, res);
		}
	}

	public void init(FilterConfig filterConfig) {
		// noop
	}

	public void destroy() {
		// noop
	}
}

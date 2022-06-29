package com.pmbanvexe.filter;

import javax.servlet.*;
import java.io.IOException;

public class Encode implements Filter {
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        request.setCharacterEncoding("UTF-8");
        chain.doFilter(request, response);
    }
}

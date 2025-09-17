package com.devjobs.web;

import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

public class SecurityHeadersFilter implements Filter {
    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
            throws IOException, ServletException {
        HttpServletResponse resp = (HttpServletResponse) res;
        resp.setHeader("X-Content-Type-Options", "nosniff");
        resp.setHeader("X-Frame-Options", "DENY");
        resp.setHeader("Referrer-Policy", "strict-origin-when-cross-origin");
        resp.setHeader("Permissions-Policy", "geolocation=(), microphone=(), camera=()");
        // CSP: permite nuestro HTML, Tailwind CDN y Google Fonts
        resp.setHeader("Content-Security-Policy",
                "default-src 'self'; " +
                        "script-src 'self' https://cdn.tailwindcss.com 'unsafe-inline'; " +
                        "style-src 'self' 'unsafe-inline' https://fonts.googleapis.com; " +
                        "img-src 'self' data:; " +
                        "font-src 'self' https://fonts.gstatic.com; " +
                        "connect-src 'self'; " +
                        "frame-ancestors 'none'");
        chain.doFilter(req, res);
    }
}
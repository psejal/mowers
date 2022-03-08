using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Owin;
using Owin;
using Microsoft.Owin.Security.Cookies;
using Microsoft.AspNet.Identity;

[assembly: OwinStartup(typeof(EmmasProject.Startup))]

namespace EmmasProject
{
    public class Startup
    {

        public void Configuration(IAppBuilder app)
        {
            app.UseCookieAuthentication(new CookieAuthenticationOptions
            {
                AuthenticationType = DefaultAuthenticationTypes.ApplicationCookie,
                CookieName = "Cookie",
                LoginPath = new PathString("/Login"),
                LogoutPath = new PathString("/Login"),
                ExpireTimeSpan = System.TimeSpan.FromMinutes(5)
            });

        }
    }
}
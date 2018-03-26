using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(checkhtml.Startup))]
namespace checkhtml
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

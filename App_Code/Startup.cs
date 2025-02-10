using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(binacrud.Startup))]
namespace binacrud
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

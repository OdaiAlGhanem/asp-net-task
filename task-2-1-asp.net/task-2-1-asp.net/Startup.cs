using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(task_2_1_asp.net.Startup))]
namespace task_2_1_asp.net
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

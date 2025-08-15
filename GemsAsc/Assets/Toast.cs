using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace GemsAsc.Assets
{
    public static class Toast
    {
        public static void Success(Page page, string message, int ms = 3000) =>
        Show(page, message, "success", "top-end", ms);

        public static void Error(Page page, string message, int ms = 4000) =>
            Show(page, message, "error", "top-end", ms);

        public static void Info(Page page, string message, int ms = 3000) =>
            Show(page, message, "info", "top-end", ms);

        public static void Warning(Page page, string message, int ms = 3000) =>
            Show(page, message, "warning", "top-end", ms);

        public static void Show(Page page, string message, string icon = "success",
                                string position = "top-end", int ms = 3000)
        {
            string script = $"AppToast.show({EncodeJs(message)}, '{icon}', '{position}', {ms});";
            Register(page, script);
        }

        public static void ShowAndRedirect(Page page, string message, string redirectUrl,
                                           string icon = "success", int ms = 1500)
        {
            string script = $"AppToast.showAndRedirect({EncodeJs(message)}, '{redirectUrl}', '{icon}', {ms});";
            Register(page, script);
        }

        private static void Register(Page page, string script)
        {
            // Works inside UpdatePanel if present; falls back otherwise.
            if (ScriptManager.GetCurrent(page) != null)
                ScriptManager.RegisterStartupScript(page, page.GetType(), Guid.NewGuid().ToString("N"), script, true);
            else
                page.ClientScript.RegisterStartupScript(page.GetType(), Guid.NewGuid().ToString("N"), script, true);
        }

        private static string EncodeJs(string value)
        {
            // Returns a *quoted* and escaped JS string.
            return "\"" + HttpUtility.JavaScriptStringEncode(value) + "\"";
        }
    }
}
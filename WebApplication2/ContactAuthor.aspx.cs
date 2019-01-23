using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.Net.Mail;
using System.Web.ModelBinding;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class ContactAuthor : System.Web.UI.Page
    {
 

        protected void Page_Load(object sender, EventArgs e)
        {
      
        }


        public object FVBook_GetItem([QueryString] int? id)
        {
            WebApplication2.Models.Comment book = null;
            var db = new WebApplication2.Models.bookDBEntities();
                        
            if (id.HasValue)
            {
                book = db.Comments.Find(id.Value);
            }
            return book;
        }

     
        public void FVBook_UpdateItem(int commentID)
        {
           WebApplication2.Models.Comment item = null;
           var db = new WebApplication2.Models.bookDBEntities();
           item = db.Comments.Find(commentID);

            if (item == null)
            {
                ModelState.AddModelError("", String.Format("Item with id {0} was not found", commentID));
                return;
            }
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                db.SaveChanges();
            }
        }

        public void FVBook_InsertItem()
        {
            var item = new WebApplication2.Models.Comment();
            TryUpdateModel(item);
            if (ModelState.IsValid)
            {
                var db = new WebApplication2.Models.bookDBEntities();
               
                db.Comments.Add(item);
               
                db.SaveChanges();
                Response.Redirect("ContactAuthor.aspx?id=" + item.commentID);
            }
        }

        public void FVBook_DeleteItem(int commentID)
        {
            var db = new WebApplication2.Models.bookDBEntities();
           
            var item = db.Comments.Find(commentID);
            if (item != null)
            {
                db.Comments.Remove(item);
                db.SaveChanges();
                Response.Redirect("ContactAuthor.aspx");
            }
        }
    }
}
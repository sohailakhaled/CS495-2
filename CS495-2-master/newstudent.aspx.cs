using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newstudent : 
   
        
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection();
        conn.ConnectionString="Data Source=(LocalDB)\\v11.0;AttachDbFilename=|data directory| studentdo.mdf;Integrated Security=True";
      
        
        string strInsert = "INSERT INTO Table "
                             + " VALUES('" + txtusername.Text + "', '"
                             + txtfirstname.Text + "', '"
                             + txtlastname.Text + "', '"
                             + ddlcountry.SelectedValue + "', '"       
                             + ddlfaclty.SelectedValue + "', '"     
                             + rblgender.SelectedValue + "', '"
                             + txtemail.Text + "', '"
                            + txtaddress.Text + "', '"
                            + txtPassword.Text + "','" 
                             + txtconfirPassword.Text + "')";
        
        // Create SQL Command
        SqlCommand cmdInsert = new SqlCommand(strInsert, conn);

        conn.Open();

        cmdInsert.ExecuteNonQuery();

        conn.Close();



        lblMsg.Text = "Welcome " + txtfirstname.Text +  "Your Account Has Been Successfully Created!!";
          
        
    }

    
</script>
    protected void Button1_Click(object sender, EventArgs e)
{

}
}
   
}
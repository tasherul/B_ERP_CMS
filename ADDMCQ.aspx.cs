using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Text;
using System.Security.Cryptography;
using System.IO;

namespace B_ERP_CMS
{
    public partial class ADDMCQ : System.Web.UI.Page
    {
        private string ConnectionString = "Data Source=DESKTOP-FOOHGE0;Initial Catalog=JOBMCQ;Integrated Security=True";
        private string ErrorMessage { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                chkEncrypt.Checked = false;
                SubAnswers(false);
                ShowDropdown();
            }
            if (chkEncrypt.Checked)
            {
                pnlEncrypt.Visible = true;
            }
            else
            {
                pnlEncrypt.Visible = false;
            }


        }
        private void SubAnswers(bool Visible)
        {
            SubAnswer1.Visible = Visible;
            SubAnswer2.Visible = Visible;
            SubAnswer3.Visible = Visible;
            SubAnswer4.Visible = Visible;
        }
        protected void RBMCQ1_CheckedChanged(object sender, EventArgs e)
        {
            SubAnswers(false);
        }
        protected void RBMCQ2_CheckedChanged(object sender, EventArgs e)
        {
            SubAnswers(false);
        }
        protected void RBMCQ3_CheckedChanged(object sender, EventArgs e)
        {
            SubAnswers(true);
        }
        private void ShowDropdown()
        {
            DataSet dt = new DataSet();
            ddlSubject.Items.Clear();
            SqlConnection Con = new SqlConnection(ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Con;
            cmd.CommandText = "select * from Subject";
            Con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while(dr.Read())
            {
                ListItem li = new ListItem();
                li.Text = dr["SubjectName"].ToString();
                li.Value = dr["Subject_ID"].ToString();
                ddlSubject.Items.Add(li);
            }           
            Con.Close();

            SqlDataAdapter dta = new SqlDataAdapter("select * from Subject order by Subject_ID DESC ", Con);
            dta.Fill(dt);

            GridViewSubject.DataSource = dt;
            GridViewSubject.DataBind();
        }
        protected void btnSubjectSave_Click(object sender, EventArgs e)
        {
            if(txtSubject.Text!="")
            {
                try
                {
                    SqlConnection Con = new SqlConnection(ConnectionString);
                    SqlCommand cmd = new SqlCommand();
                    cmd.Connection = Con;
                    cmd.CommandText = "select count(*) from Subject where SubjectName='"+txtSubject.Text+"'";
                    Con.Open();
                    var Count = Convert.ToInt32(cmd.ExecuteScalar());
                    Con.Close();
                    if(Count==0)
                    {
                        cmd.CommandText = "insert into Subject (SubjectName)  values(@SubjectName)";
                        cmd.Parameters.AddWithValue("@SubjectName", txtSubject.Text);
                        Con.Open();
                        cmd.ExecuteNonQuery();
                        Con.Close();
                        lblSubjectResult.Text = "Saved";
                        txtSubject.Text = "";
                        lblSubjectResult.ForeColor = System.Drawing.Color.Green;
                        ShowDropdown();
                    }
                    else
                    {
                        lblSubjectResult.ForeColor = System.Drawing.Color.Red;
                        lblSubjectResult.Text = "Already Insert this Subject. try Another.";
                    }

                }
                catch(Exception err)
                {
                    lblSubjectResult.ForeColor = System.Drawing.Color.Red;
                    lblSubjectResult.Text = "Error: "+err.Message;
                }
            }
            else
            {
                lblSubjectResult.ForeColor = System.Drawing.Color.Red;
                lblSubjectResult.Text = "Please Insert a Subject." ;
            }
        }

        #region Encrypt
        private const int Keysize = 256;
        // This constant determines the number of iterations for the password bytes generation function.
        private static int DerivationIterations = 1000;
        private string passPhrase = "P!@sH05";
        public string Key { set { passPhrase = value; } }
        public int SetDerivationIterations { set { DerivationIterations = value; } }
        private string Encrypt(string plainText)
        {
            // Salt and IV is randomly generated each time, but is preprended to encrypted cipher text
            // so that the same Salt and IV values can be used when decrypting.  
            var saltStringBytes = Generate256BitsOfRandomEntropy();
            var ivStringBytes = Generate256BitsOfRandomEntropy();
            var plainTextBytes = Encoding.UTF8.GetBytes(plainText);
            using (var password = new Rfc2898DeriveBytes(passPhrase, saltStringBytes, DerivationIterations))
            {
                var keyBytes = password.GetBytes(Keysize / 8);
                using (var symmetricKey = new RijndaelManaged())
                {
                    symmetricKey.BlockSize = 256;
                    symmetricKey.Mode = CipherMode.CBC;
                    symmetricKey.Padding = PaddingMode.PKCS7;
                    using (var encryptor = symmetricKey.CreateEncryptor(keyBytes, ivStringBytes))
                    {
                        using (var memoryStream = new MemoryStream())
                        {
                            using (var cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write))
                            {
                                cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
                                cryptoStream.FlushFinalBlock();
                                // Create the final bytes as a concatenation of the random salt bytes, the random iv bytes and the cipher bytes.
                                var cipherTextBytes = saltStringBytes;
                                cipherTextBytes = cipherTextBytes.Concat(ivStringBytes).ToArray();
                                cipherTextBytes = cipherTextBytes.Concat(memoryStream.ToArray()).ToArray();
                                memoryStream.Close();
                                cryptoStream.Close();
                                return Convert.ToBase64String(cipherTextBytes);
                            }
                        }
                    }
                }
            }
        }
        private string _Encrypt(string plainText, string Key)
        {
            // Salt and IV is randomly generated each time, but is preprended to encrypted cipher text
            // so that the same Salt and IV values can be used when decrypting.  
            var saltStringBytes = Generate256BitsOfRandomEntropy();
            var ivStringBytes = Generate256BitsOfRandomEntropy();
            var plainTextBytes = Encoding.UTF8.GetBytes(plainText);
            using (var password = new Rfc2898DeriveBytes(Key, saltStringBytes, DerivationIterations))
            {
                var keyBytes = password.GetBytes(Keysize / 8);
                using (var symmetricKey = new RijndaelManaged())
                {
                    symmetricKey.BlockSize = 256;
                    symmetricKey.Mode = CipherMode.CBC;
                    symmetricKey.Padding = PaddingMode.PKCS7;
                    using (var encryptor = symmetricKey.CreateEncryptor(keyBytes, ivStringBytes))
                    {
                        using (var memoryStream = new MemoryStream())
                        {
                            using (var cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write))
                            {
                                cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
                                cryptoStream.FlushFinalBlock();
                                // Create the final bytes as a concatenation of the random salt bytes, the random iv bytes and the cipher bytes.
                                var cipherTextBytes = saltStringBytes;
                                cipherTextBytes = cipherTextBytes.Concat(ivStringBytes).ToArray();
                                cipherTextBytes = cipherTextBytes.Concat(memoryStream.ToArray()).ToArray();
                                memoryStream.Close();
                                cryptoStream.Close();
                                return Convert.ToBase64String(cipherTextBytes);
                            }
                        }
                    }
                }
            }
        }
        private static byte[] Generate256BitsOfRandomEntropy()
        {
            var randomBytes = new byte[32]; // 32 Bytes will give us 256 bits.
            using (var rngCsp = new RNGCryptoServiceProvider())
            {
                // Fill the array with cryptographically secure random bytes.
                rngCsp.GetBytes(randomBytes);
            }
            return randomBytes;
        }
        #endregion

        #region Decrypt

        private string Decrypt(string cipherText)
        {
            try
            {
                // Get the complete stream of bytes that represent:
                // [32 bytes of Salt] + [32 bytes of IV] + [n bytes of CipherText]
                var cipherTextBytesWithSaltAndIv = Convert.FromBase64String(cipherText);
                // Get the saltbytes by extracting the first 32 bytes from the supplied cipherText bytes.
                var saltStringBytes = cipherTextBytesWithSaltAndIv.Take(Keysize / 8).ToArray();
                // Get the IV bytes by extracting the next 32 bytes from the supplied cipherText bytes.
                var ivStringBytes = cipherTextBytesWithSaltAndIv.Skip(Keysize / 8).Take(Keysize / 8).ToArray();
                // Get the actual cipher text bytes by removing the first 64 bytes from the cipherText string.
                var cipherTextBytes = cipherTextBytesWithSaltAndIv.Skip((Keysize / 8) * 2).Take(cipherTextBytesWithSaltAndIv.Length - ((Keysize / 8) * 2)).ToArray();

                using (var password = new Rfc2898DeriveBytes(passPhrase, saltStringBytes, DerivationIterations))
                {
                    var keyBytes = password.GetBytes(Keysize / 8);
                    using (var symmetricKey = new RijndaelManaged())
                    {
                        symmetricKey.BlockSize = 256;
                        symmetricKey.Mode = CipherMode.CBC;
                        symmetricKey.Padding = PaddingMode.PKCS7;
                        using (var decryptor = symmetricKey.CreateDecryptor(keyBytes, ivStringBytes))
                        {
                            using (var memoryStream = new MemoryStream(cipherTextBytes))
                            {
                                using (var cryptoStream = new CryptoStream(memoryStream, decryptor, CryptoStreamMode.Read))
                                {
                                    var plainTextBytes = new byte[cipherTextBytes.Length];
                                    var decryptedByteCount = cryptoStream.Read(plainTextBytes, 0, plainTextBytes.Length);
                                    memoryStream.Close();
                                    cryptoStream.Close();
                                    return Encoding.UTF8.GetString(plainTextBytes, 0, decryptedByteCount);
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception er)
            { ErrorMessage = er.Message; return "Error some security issus"; }
        }
        private string Decrypt(string cipherText, string Key)
        {
            try
            {
                // Get the complete stream of bytes that represent:
                // [32 bytes of Salt] + [32 bytes of IV] + [n bytes of CipherText]
                var cipherTextBytesWithSaltAndIv = Convert.FromBase64String(cipherText);
                // Get the saltbytes by extracting the first 32 bytes from the supplied cipherText bytes.
                var saltStringBytes = cipherTextBytesWithSaltAndIv.Take(Keysize / 8).ToArray();
                // Get the IV bytes by extracting the next 32 bytes from the supplied cipherText bytes.
                var ivStringBytes = cipherTextBytesWithSaltAndIv.Skip(Keysize / 8).Take(Keysize / 8).ToArray();
                // Get the actual cipher text bytes by removing the first 64 bytes from the cipherText string.
                var cipherTextBytes = cipherTextBytesWithSaltAndIv.Skip((Keysize / 8) * 2).Take(cipherTextBytesWithSaltAndIv.Length - ((Keysize / 8) * 2)).ToArray();

                using (var password = new Rfc2898DeriveBytes(Key, saltStringBytes, DerivationIterations))
                {
                    var keyBytes = password.GetBytes(Keysize / 8);
                    using (var symmetricKey = new RijndaelManaged())
                    {
                        symmetricKey.BlockSize = 256;
                        symmetricKey.Mode = CipherMode.CBC;
                        symmetricKey.Padding = PaddingMode.PKCS7;
                        using (var decryptor = symmetricKey.CreateDecryptor(keyBytes, ivStringBytes))
                        {
                            using (var memoryStream = new MemoryStream(cipherTextBytes))
                            {
                                using (var cryptoStream = new CryptoStream(memoryStream, decryptor, CryptoStreamMode.Read))
                                {
                                    var plainTextBytes = new byte[cipherTextBytes.Length];
                                    var decryptedByteCount = cryptoStream.Read(plainTextBytes, 0, plainTextBytes.Length);
                                    memoryStream.Close();
                                    cryptoStream.Close();
                                    return Encoding.UTF8.GetString(plainTextBytes, 0, decryptedByteCount);
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception er)
            { ErrorMessage = er.Message; return "Error some security issus"; }
        }
        #endregion



    }

}
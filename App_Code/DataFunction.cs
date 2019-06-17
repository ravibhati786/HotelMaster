using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

//Developed On:01-jan-2012
//Purpose:This class contains functions to handle database connectivity;


/// Summary description for DataFunction

public class DataFunction
{
    #region global instances, whose objects will be created in simultaneous functions.
    SqlConnection con;
    SqlCommand cmd;
    DataSet ds;
    SqlDataAdapter adpt;
    #endregion

    #region constructor which contains connectionstring.
    public DataFunction()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["mycon"].ConnectionString);
    }
    #endregion

    #region function for insert, delete and update database
    public int ExecuteQuery(SqlParameter[] param, string spName)
    {
        if (con.State == ConnectionState.Closed)
        {
            //opening the connection
            con.Open();
        }
        //declaration of an object of the command
        cmd = new SqlCommand(spName, con);
        cmd.CommandType = CommandType.StoredProcedure;
        //function for adding parameters in the command
        AddParameters(cmd, param);
        //integar variable result to hold final output of the executenonquery method.
        int result = cmd.ExecuteNonQuery();
        //closing the connection.
        con.Close();
        //returning the result.
        return result;
    }
    #endregion

    #region function for adding the parameters. this functions takes two argument, empty command and array of parameters
    //it will not be used outside of the class so make it private.
    private void AddParameters(SqlCommand cmd, SqlParameter[] param)
    {
        //loop for accessing each parameters from array.
        foreach (SqlParameter p in param)
        {
            //check if value of p contains null value then convert it into dbnull.
            if ((p.Value == null) || (p.Value.ToString() == ""))
            {
                p.Value = DBNull.Value;
            }
            //adding each parameter in the command
            cmd.Parameters.Add(p);
        }
    }
    #endregion

    #region function for Single value query with parameters
    public object ExecuteScalar(string spName, SqlParameter[] param)
    {
        if (con.State == ConnectionState.Closed)
        {
            //opening the connection
            con.Open();
        }
        //declaration of an object of the command
        cmd = new SqlCommand(spName, con);
        cmd.CommandType = CommandType.StoredProcedure;
        //function for adding parameters in the command
        AddParameters(cmd, param);
        //object variable result to hold final output of the executenonquery method.
        object result = cmd.ExecuteScalar();
        //closing the connection.
        con.Close();
        //returning the result.
        return result;
    }
    #endregion

    #region function for Single value query without parameters
    public object ExecuteScalar(string spName)
    {
        if (con.State == ConnectionState.Closed)
        {
            //opening the connection
            con.Open();
        }
        //declaration of an object of the command
        cmd = new SqlCommand(spName, con);
        cmd.CommandType = CommandType.StoredProcedure;
        //object variable result to hold final output of the executenonquery method.
        object result = cmd.ExecuteScalar();
        //closing the connection.
        con.Close();
        //returning the result.
        return result;
    }
    #endregion

    #region function for selecting multidata on the basis of parameters
    public DataSet FillDS(string spName, SqlParameter[] param)
    {
        if (con.State == ConnectionState.Closed)
        {
            //opening the connection
            con.Open();
        }
        //declaration of an object of the command
        cmd = new SqlCommand(spName, con);
        cmd.CommandType = CommandType.StoredProcedure;
        //add parameters
        AddParameters(cmd, param);
        //declare an object of Dataset to fill with data
        ds = new DataSet();
        //declare adpater for filling dataset
        adpt = new SqlDataAdapter(cmd);
        //filling the dataset
        adpt.Fill(ds);
        //closing the connection.
        con.Close();
        //returning the filled DS
        return ds;
    }
    #endregion

    #region function for selecting multidata without parameters
    public DataSet FillDS(string spName)
    {
        if (con.State == ConnectionState.Closed)
        {
            //opening the connection
            con.Open();
        }
        //declaration of an object of the command
        cmd = new SqlCommand(spName, con);
        cmd.CommandType = CommandType.StoredProcedure;
        //declare an object of Dataset to fill with data
        ds = new DataSet();
        //declare adpater for filling dataset
        adpt = new SqlDataAdapter(cmd);
        //filling the dataset
        adpt.Fill(ds);
        //closing the connection.
        con.Close();
        //returning the filled DS
        return ds;
    }
    #endregion

}

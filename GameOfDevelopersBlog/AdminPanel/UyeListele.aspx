<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel/AdminMaster.Master" AutoEventWireup="true" CodeBehind="UyeListele.aspx.cs" Inherits="GameOfDevelopersBlog.AdminPanel.UyeListele" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <asp:ListView ID="lv_uyeler" runat="server" OnItemCommand="lv_uyeler_ItemCommand">
            <LayoutTemplate>
                <table class="tablo" cellpaddind="0" cellspacing="0">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Isim</th>
                            <th>Soyisim</th>
                            <th>Kullanici Adi</th>
                            <th>Mail</th>
                            <th>Durum</th>
                            <th>Secenekler</th>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:PlaceHolder ID="ItemPlaceHolder" runat="server"></asp:PlaceHolder>
                    </tbody>
                </table>
            </LayoutTemplate>
            <ItemTemplate>
                <tr>
                    <td><%# Eval("ID") %></td>
                    <td><%# Eval("Isim") %></td>
                    <td><%# Eval("Soyisim") %></td>
                    <td><%# Eval("KullaniciAdi") %></td>
                    <td><%# Eval("Mail") %></td>
                    <td><%# Eval("DurumStr") %></td>
                    <td>
                        <asp:LinkButton ID="lb_ban" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="Banla" CssClass="sil" >Askıya Al</asp:LinkButton>
                        <asp:LinkButton ID="lb_banKaldır" runat="server" CommandArgument='<%# Eval("ID") %>' CommandName="banKaldır" CssClass="duzenle">Askıdan Çıkart</asp:LinkButton>
                    </td>
                    
                </tr>
            </ItemTemplate>
        </asp:ListView>
    </div>
</asp:Content>

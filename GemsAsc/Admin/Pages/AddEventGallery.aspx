<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddEventGallery.aspx.cs" Inherits="GemsAsc.Admin.Pages.AddEventGallery" Async="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .tab-container {
            margin: 20px auto;
            width: 70%;
        }

        /* Proper Bootstrap nav-tabs look */
        .nav-tabs {
            border-bottom: 2px solid #16704C;
            display: flex;
            justify-content: flex-start;
        }

        .nav-tabs .nav-item {
            margin-bottom: -2px;
        }

        .nav-tabs .nav-link {
            color: #16704C;
            font-weight: 600;
            border: none;
            border-bottom: 2px solid transparent;
        }

        .nav-tabs .nav-link.active {
            background-color: #16704C;
            color: #fff;
            border-radius: 0.25rem 0.25rem 0 0;
        }

        .form-section {
            margin-top: 40px;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .form-group {
            margin-top: 20px;
            display: flex;
            justify-content: space-between;

        }

        .form-control,
        textarea.form-control {
            width: 100% !important;
            max-width: 100%;
            display: block;
            box-sizing: border-box;
        }

        .submit-btn {
            background-color: #16704C;
            color: white;
            font-weight: bold;
        }
    </style>


    <div class="tab-container">
        <!-- Nav Tabs -->
        <ul class="nav nav-tabs" id="galleryEventTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="gallery-tab" data-bs-toggle="tab" href="#gallery" role="tab"
                   aria-controls="gallery" aria-selected="true">Add Gallery</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="event-tab" data-bs-toggle="tab" href="#event" role="tab"
                   aria-controls="event" aria-selected="false">Add Event</a>
            </li>
        </ul>

        <asp:HiddenField ID="hfActiveTab" runat="server" />

        <!-- Tab Content -->
        <div class="tab-content" id="galleryEventTabContent">

            <!-- Gallery Form -->
            <div class="tab-pane fade show active" id="gallery" role="tabpanel" aria-labelledby="gallery-tab">
                <div class="form-section">
                    <asp:TextBox ID="txtGalleryTitle" runat="server" CssClass="form-control" Placeholder="Gallery Title"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="rfvGalleryTitle" 
                        runat="server" 
                        ControlToValidate="txtGalleryTitle" 
                        ErrorMessage="Gallery Title is required" 
                        CssClass="text-danger" 
                        Display="Dynamic" 
                        ValidationGroup="GalleryGroup" />
        
                    <div class="form-group">
                        <asp:Label Text="Gallery Image" AssociatedControlID="fuGalleryImage" runat="server" />
                        <asp:FileUpload ID="fuGalleryImage" runat="server" CssClass="form-control-file" />
                        <asp:Button ID="Button1" runat="server" Text="Upload Image" OnClick="btnUploadGallery_Click" CssClass="btn btn-secondary mt-2" />

                        <asp:RegularExpressionValidator 
                            ControlToValidate="fuGalleryImage"
                            ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|bmp)$"
                            ErrorMessage="Only image files are allowed (.jpg, .jpeg, .png, .gif, .bmp)"
                            CssClass="text-danger" 
                            runat="server" 
                            Display="Dynamic" 
                            ValidationGroup="GalleryGroup" />
                        <br />
                    </div>
                    <div>
                        <asp:Image ID="imgGalleryPreview" runat="server" Width="350px" CssClass="mt-2 border rounded" />
                    </div>

                    <asp:Button ID="btnAddGallery" runat="server" Text="Save Gallery" CssClass="btn submit-btn" OnClick="btnAddGallery_Click" ValidationGroup="GalleryGroup" />
                </div>
            </div>


            <!-- Event Form -->
            <div class="tab-pane fade" id="event" role="tabpanel" aria-labelledby="event-tab">
                <div class="form-section">
                    <asp:TextBox ID="txtEventTitle" runat="server" CssClass="form-control" Placeholder="Event Title"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="rfvEventTitle" 
                        runat="server" 
                        ControlToValidate="txtEventTitle" 
                        ErrorMessage="Event Title is required" 
                        CssClass="text-danger" 
                        Display="Dynamic" 
                        ValidationGroup="EventGroup" />

                    <asp:TextBox ID="txtEventDesc" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="4" Placeholder="Event Description"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="rfvEventDesc" 
                        runat="server" 
                        ControlToValidate="txtEventDesc" 
                        ErrorMessage="Event Description is required" 
                        CssClass="text-danger" 
                        Display="Dynamic" 
                        ValidationGroup="EventGroup" />

                    <asp:TextBox ID="txtEventDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                    <asp:RequiredFieldValidator 
                        ID="rfvEventDate" 
                        runat="server" 
                        ControlToValidate="txtEventDate" 
                        ErrorMessage="Event Date is required" 
                        CssClass="text-danger" 
                        Display="Dynamic" 
                        ValidationGroup="EventGroup" />

                    <div class="form-group">
                        <asp:Label Text="Event Image" AssociatedControlID="fuEventImage" runat="server" />
                        <asp:FileUpload ID="fuEventImage" runat="server" CssClass="form-control-file" />
                        <asp:Button ID="btnUploadEvent" runat="server" Text="Upload Image" OnClick="btnUploadEvent_Click" CssClass="btn btn-secondary mt-2" />

                        <asp:RegularExpressionValidator 
                            ControlToValidate="fuEventImage"
                            ValidationExpression="(.*?)\.(jpg|jpeg|png|gif|bmp)$"
                            ErrorMessage="Only image files are allowed (.jpg, .jpeg, .png, .gif, .bmp)"
                            CssClass="text-danger" 
                            runat="server" 
                            Display="Dynamic" 
                            ValidationGroup="EventGroup" />
                        <br />
                    </div>
                    <div>
                        <asp:Image ID="imgEventPreview" runat="server" Width="150px" CssClass="mt-2 border rounded" />
                    </div>

                    <asp:Button ID="btnAddEvent" runat="server" Text="Save Event" CssClass="btn submit-btn" OnClick="btnAddEvent_Click" ValidationGroup="EventGroup" />
                </div>
            </div>


        </div>
    </div>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var hfActiveTab = document.getElementById("<%= hfActiveTab.ClientID %>");

        // When a tab is shown, save its ID
        var tabs = document.querySelectorAll('a[data-bs-toggle="tab"]');
        tabs.forEach(tab => {
            tab.addEventListener("shown.bs.tab", function (e) {
                hfActiveTab.value = e.target.getAttribute("href"); // e.g. "#event"
            });
        });

        // Restore last active tab after postback
        if (hfActiveTab.value) {
            var triggerEl = document.querySelector('a[href="' + hfActiveTab.value + '"]');
            if (triggerEl) {
                new bootstrap.Tab(triggerEl).show();
            }
        }
    });
    </script>


</asp:Content>

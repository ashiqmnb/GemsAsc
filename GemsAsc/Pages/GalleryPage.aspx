<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GalleryPage.aspx.cs" Inherits="GemsAsc.Pages.GalleryPage" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .gallery-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            gap: 15px;
            flex-wrap: nowrap;
        }

        .gallery-title {
            background-color: #f5f5f5;
            padding: 10px;
            border-left: 5px solid #16704C;
            font-size: 1.5rem;
            font-weight: bold;
            display: block;
            width: 100%;
        }

        .see-all-btn {
            background-color: transparent;
            border: 2px solid #16704C;
            color: #16704C;
            padding: 8px 16px;
            border-radius: 25px;
            text-decoration: none;
            font-size: 1rem;
            transition: all 0.3s ease;
            white-space: nowrap;
        }

        .see-all-btn:hover {
            background-color: #16704C;
            color: #fff;
        }

        .gallery-masonry {
            column-count: 4;
            column-gap: 1rem;
        }

        @media (max-width: 1200px) {
            .gallery-masonry {
                column-count: 3;
            }
        }

        @media (max-width: 768px) {
            .gallery-masonry {
                column-count: 2;
            }
        }

        @media (max-width: 576px) {
            .gallery-masonry {
                column-count: 2;
            }

            .gallery-title {
                font-size: 1.5rem;
            }

            .see-all-btn {
                font-size: 0.9rem;
                padding: 6px 12px;
            }
        }

        .gallery-item {
            position: relative;
            margin-bottom: 1rem;
            break-inside: avoid;
            overflow: hidden;
            border-radius: 8px;
        }

        .gallery-item img {
            width: 100%;
            display: block;
            border-radius: 8px;
        }

        .gallery-title-overlay {
            position: absolute;
            bottom: 0;
            width: 100%;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            font-size: 0.9rem;
            padding: 6px 10px;
            text-align: left;
            border-bottom-left-radius: 8px;
            border-bottom-right-radius: 8px;
        }
    </style>

    <div class="container py-4">
        <div class="gallery-header mb-4">
            <h2 class="gallery-title">Image Gallery</h2>
        </div>

        <div class="gallery-masonry" id="galleryContainer" runat="server">
            <%-- Gallery items will be injected dynamically --%>
        </div>
    </div>
</asp:Content>

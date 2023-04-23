<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="FBLA.FAQ" MasterPageFile="~/User.Master" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
        .full-page-accordion {
            width: 100%;
            height: 100vh;
        }

            .full-page-accordion .accordion-item {
                height: calc(100vh / 3); /* Adjust the height based on the accordion height */
                min-height: 200px;
            }

        html,
        body {
            height: 100%;
        }

        .page-container {
            display: flex;
            height: 100%;
            width: 100%;
            justify-content: center;
            align-items: center;
        }

        .card-full-width-height {
            height: 100%;
            width: 100%;
        }
    </style>

    <div class="page-container">
        <div class="col-lg-12 d-flex align-items-stretch">
            <div class="card w-100 card-full-width-height">
                <div
                    class="
                        d-flex
                        border-bottom
                        title-part-padding
                        align-items-center
                      ">
                    <div>
                        <h4 class="card-title mb-0">Frequently Asked Questions</h4>
                    </div>
                    <div class="ms-auto flex-shrink-0">
                        <input type="text" id="searchInput" class="form-control" placeholder="Search...">
                    </div>
                    <div class="ms-auto flex-shrink-0">
                    </div>
                </div>
                <div class="card-body">
                    <div class="accordion" id="accordionExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingOne">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                                    How can I contact SchoolBoost if I have any questions?
                                </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p>If you have any questions or concerns, you can contact SchoolBoost by sending an email to <a href="mailto:schoolboostfbla@gmail.com">schoolboostfbla@gmail.com</a>. We aim to respond to all inquiries within 2 business days.</p>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTwo">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                    How can I create an event?
                                </button>
                            </h2>
                            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p>If you want to create an event, follow these steps:</p>
                                    <ol>
                                        <li>If you're an admin, navigate to <a href="https://localhost:44302/admin/ManageEvents.aspx"><strong>Admin Events</strong></a> via the menu bar.</li>
                                        <li>Click on <strong>View Events</strong> and select <strong>Create New Event</strong>.</li>
                                        <li>Input the valid details for the event.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingThree">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                    How do I submit a point request?
                                </button>
                            </h2>
                            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p>If you want to submit a point request, follow these steps:</p>
                                    <ol>
                                        <li>Navigate to <a href="https://localhost:44302/Student/MyEvents.aspx"><strong>My Events</strong></a>.</li>
                                        <li>Click <strong>Add New Event</strong> and input the valid details for the event.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingFour">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                                    How can I generate a report with student data?
                                </button>
                            </h2>
                            <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p>To generate a report, please follow these steps:</p>
                                    <ol>
                                        <li>Access the <a href="https://localhost:44302/Admin/ManageEvents.aspx"><strong>Admin Events</strong></a> page.</li>
                                        <li>Click on the "Generate Report" button to create an Excel file that contains all the relevant student data.</li>
                                        <li>Once the report is generated, it will be automatically saved in your downloads folder.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingFive">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                                    How do I create an account?
                                </button>
                            </h2>
                            <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p>If you want to create an account, follow these steps:</p>
                                    <ol>
                                        <li>Navigate to the <a href="https://localhost:44302/Register.aspx"><strong>Register</strong></a> page via the menu bar.</li>
                                        <li>Create an account by providing the required information.</li>
                                    </ol>

                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingSix">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSix" aria-expanded="false" aria-controls="collapseSix">
                                    How do I post a picture of myself at an event?
                                </button>
                            </h2>
                            <div id="collapseSix" class="accordion-collapse collapse" aria-labelledby="headingSix" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p>If you want to post a picture of yourself at an event, follow these steps:</p>
                                    <ol>
                                        <li>If you're a student and signed in, navigate to the <a href="https://localhost:44302/EventGallery.aspx"><strong>Event Gallery</strong></a> page.</li>
                                        <li>Post a picture of yourself at the event.</li>
                                    </ol>

                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingSeven">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven">
                                    How do I edit an event's details?
                                </button>
                            </h2>
                            <div id="collapseSeven" class="accordion-collapse collapse" aria-labelledby="headingSeven" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p>If you want to edit an event's details, follow these steps:</p>
                                    <ol>
                                        <li>Navigate to <a href="https://localhost:44302/Admin/CreateNewEvent.aspx"><strong>Create New Event</strong></a>.</li>
                                        <li>Select the <strong>Update</strong> button for the event whose details you want to change.</li>
                                        <li>Update the relevant information.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingEight">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEight" aria-expanded="false" aria-controls="collapseEight">
                                    How do I logout?
                                </button>
                            </h2>
                            <div id="collapseEight" class="accordion-collapse collapse" aria-labelledby="headingEight" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p>If you want to logout, follow these steps:</p>
                                    <ol>
                                        <li>Click on <strong>Logout</strong> on the menu bar.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingNine">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseNine" aria-expanded="false" aria-controls="collapseNine">
                                    How do I login?
                                </button>
                            </h2>
                            <div id="collapseNine" class="accordion-collapse collapse" aria-labelledby="headingNine" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p>If you want to login, follow these steps:</p>
                                    <ol>
                                        <li>Click on <a href="https://localhost:44302/Login.aspx"><strong>Login</strong></a> in the menu bar.</li>
                                        <li>Enter your login details.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTen">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTen" aria-expanded="false" aria-controls="collapseTen">
                                    How do I view the winners of each quarter?
                                </button>
                            </h2>
                            <div id="collapseTen" class="accordion-collapse collapse" aria-labelledby="headingTen" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p>If you want to view the winners of each quarter, follow these steps:</p>
                                    <ol>
                                        <li>Navigate to the <a href="https://localhost:44302/Winners.aspx"><strong>Winners</strong></a> page.</li>
                                        <li>View the winners for each quarter.</li>
                                    </ol>

                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingEleven">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEleven" aria-expanded="false" aria-controls="collapseEleven">
                                    How do I view my prize progress?
                                </button>
                            </h2>
                            <div id="collapseEleven" class="accordion-collapse collapse" aria-labelledby="headingEleven" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p>If you want to view your prize progress, follow these steps:</p>
                                    <ol>
                                        <li>Navigate to the <a href="https://localhost:44302/Student/MyEvents.aspx"><strong>My Events</strong></a> page.</li>
                                        <li>You can see your progress towards winning prizes here.</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header" id="headingTwelve">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwelve" aria-expanded="false" aria-controls="collapseTwelve">
                                    How do I view the time left in the quarter?
                                </button>
                            </h2>
                            <div id="collapseTwelve" class="accordion-collapse collapse" aria-labelledby="headingTwelve" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    <p>If you want to view the time left in the quarter, follow these steps:</p>
                                    <ol>
                                        <li>Go to the <a href="https://localhost:44302/Student/MyEvents.aspx"><strong>My Events</strong></a> page if you're a student, or to the <a href="https://localhost:44302/Admin/ManageEvents.aspx"><strong>Admin Events</strong></a> page if you're an admin.</li>
                                        <li>The time left in the quarter will be displayed on the page.</li>
                                    </ol>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="chat-windows"></div>

    <script>
        const searchInput = document.getElementById('searchInput');

        searchInput.addEventListener('input', () => {
            const filter = searchInput.value.toLowerCase();
            const accordionItems = document.querySelectorAll('.accordion-item');

            accordionItems.forEach(item => {
                const accordionHeader = item.querySelector('.accordion-header');
                const textValue = accordionHeader.textContent || accordionHeader.innerText;

                if (textValue.toLowerCase().indexOf(filter) > -1) {
                    item.style.display = "";
                } else {
                    item.style.display = "none";
                }
            });
        });
    </script>
    <script src="../../assets/libs/jquery/dist/jquery.min.js"></script>
    <script src="../../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../../dist/js/app.min.js"></script>
    <script src="../../dist/js/app.init.horizontal.js"></script>
    <script src="../../dist/js/app-style-switcher.js"></script>
    <script src="../../assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../../assets/extra-libs/sparkline/sparkline.js"></script>
    <script src="../../dist/js/waves.js"></script>
    <script src="../../dist/js/sidebarmenu.js"></script>
    <script src="../../dist/js/feather.min.js"></script>
    <script src="../../dist/js/custom.min.js"></script>
    <script src="../../assets/extra-libs/prism/prism.js"></script>
</asp:Content>

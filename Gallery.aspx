<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="FBLA.Gallery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div class="col-lg-7 col-xl-8">
              <div class="card">
                <!-- Nav tabs -->
                <ul class="nav nav-tabs profile-tab nav-justified" role="tablist">
                  <li class="nav-item" role="presentation">
                    <a class="nav-link active text-center" data-bs-toggle="tab" href="#home" role="tab" aria-selected="true">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-activity fill-white feather-sm"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
                      <span class="d-none d-md-inline-block fw-normal">Activity</span>
                    </a>
                  </li>
                  <li class="nav-item" role="presentation">
                    <a class="nav-link text-center" data-bs-toggle="tab" href="#profile" role="tab" aria-selected="false" tabindex="-1">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users fill-white feather-sm"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                      <span class="d-none d-md-inline-block fw-normal">Profile</span>
                    </a>
                  </li>
                  <li class="nav-item" role="presentation">
                    <a class="nav-link text-center" data-bs-toggle="tab" href="#settings" role="tab" aria-selected="false" tabindex="-1">
                      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-settings fill-white feather-sm"><circle cx="12" cy="12" r="3"></circle><path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 0 1 0 2.83 2 2 0 0 1-2.83 0l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-2 2 2 2 0 0 1-2-2v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 0 1-2.83 0 2 2 0 0 1 0-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1-2-2 2 2 0 0 1 2-2h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 0 1 0-2.83 2 2 0 0 1 2.83 0l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 2-2 2 2 0 0 1 2 2v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 0 1 2.83 0 2 2 0 0 1 0 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 2 2 2 2 0 0 1-2 2h-.09a1.65 1.65 0 0 0-1.51 1z"></path></svg>
                      <span class="d-none d-md-inline-block fw-normal">Settings</span>
                    </a>
                  </li>
                </ul>
                <!-- Tab panes -->
                <div class="tab-content">
                  <div class="tab-pane active" id="home" role="tabpanel">
                    <div class="card-body">
                      <div class="profiletimeline position-relative">
                        <div class="sl-item mt-2 mb-3">
                          <div class="sl-left float-left me-3">
                            <img src="../../assets/images/users/1.jpg" alt="user" class="rounded-circle">
                          </div>
                          <div class="sl-right">
                            <div>
                              <div class="d-md-flex align-items-center">
                                <h5 class="mb-0 font-weight-medium">
                                  <a href="#" class="link">John Doe</a>
                                </h5>
                                <span class="sl-date text-muted ms-1">5 minutes ago</span>
                              </div>

                              <p>
                                assign a new task
                                <a href="#"> Design weblayout</a>
                              </p>
                              <div class="row">
                                <div class="col-lg-3 col-md-6 mb-3">
                                  <img src="../../assets/images/big/img1.jpg" alt="user" class="img-fluid rounded-3">
                                </div>
                                <div class="col-lg-3 col-md-6 mb-3">
                                  <img src="../../assets/images/big/img2.jpg" alt="user" class="img-fluid rounded-3">
                                </div>
                                <div class="col-lg-3 col-md-6 mb-3">
                                  <img src="../../assets/images/big/img3.jpg" alt="user" class="img-fluid rounded-3">
                                </div>
                                <div class="col-lg-3 col-md-6 mb-3">
                                  <img src="../../assets/images/big/img4.jpg" alt="user" class="img-fluid rounded-3">
                                </div>
                              </div>
                              <div class="text-nowrap">
                                <a href="javascript:void(0)" class="link me-2 font-weight-medium"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle fill-white feather-sm text-info"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path></svg>
                                  comments</a>
                                <a href="javascript:void(0)" class="link me-2 font-weight-medium"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-heart fill-white feather-sm text-danger"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
                                  5 Likes</a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="sl-item my-4 border-top pt-4">
                          <div class="sl-left float-left me-3">
                            <img src="../../assets/images/users/2.jpg" alt="user" class="rounded-circle">
                          </div>
                          <div class="sl-right">
                            <div>
                              <div class="d-md-flex align-items-center">
                                <h5 class="mb-0 font-weight-medium">
                                  <a href="#" class="link">James Smith</a>
                                </h5>
                                <span class="sl-date text-muted ms-1">5 minutes ago</span>
                              </div>
                              <div class="mt-3 row">
                                <div class="col-md-3 col-xs-12">
                                  <img src="../../assets/images/big/img1.jpg" alt="user" class="img-fluid rounded-3">
                                </div>
                                <div class="col-md-9 mt-3 mt-md-0">
                                  <p class="fs-3">
                                    Lorem ipsum dolor sit amet, consectetur
                                    adipiscing elit. Integer nec odio. Praesent
                                    libero. Sed cursus ante dapibus diam.
                                  </p>
                                  <a href="#" class="btn btn-success">
                                    Design weblayout</a>
                                </div>
                              </div>
                              <div class="text-nowrap mt-3">
                                <a href="javascript:void(0)" class="link me-2 font-weight-medium"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle fill-white feather-sm text-info"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path></svg>
                                  comments</a>
                                <a href="javascript:void(0)" class="link me-2 font-weight-medium"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-heart fill-white feather-sm text-danger"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
                                  5 Likes</a>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="sl-item my-4 border-top pt-4">
                          <div class="sl-left float-left me-3">
                            <img src="../../assets/images/users/3.jpg" alt="user" class="rounded-circle">
                          </div>
                          <div class="sl-right">
                            <div>
                              <div class="d-md-flex align-items-center">
                                <h5 class="mb-0 font-weight-medium">
                                  <a href="#" class="link">Maria Hernandez</a>
                                </h5>
                                <span class="sl-date text-muted ms-1">5 minutes ago</span>
                              </div>
                              <p class="mt-2 fs-3">
                                Lorem ipsum dolor sit amet, consectetur
                                adipiscing elit. Integer nec odio. Praesent
                                libero. Sed cursus ante dapibus diam. Sed nisi.
                                Nulla quis sem at nibh elementum imperdiet. Duis
                                sagittis ipsum. Praesent mauris. Fusce nec
                                tellus sed augue semper
                              </p>
                            </div>
                            <div class="text-nowrap mt-3">
                              <a href="javascript:void(0)" class="link me-2 font-weight-medium"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-message-circle fill-white feather-sm text-info"><path d="M21 11.5a8.38 8.38 0 0 1-.9 3.8 8.5 8.5 0 0 1-7.6 4.7 8.38 8.38 0 0 1-3.8-.9L3 21l1.9-5.7a8.38 8.38 0 0 1-.9-3.8 8.5 8.5 0 0 1 4.7-7.6 8.38 8.38 0 0 1 3.8-.9h.5a8.48 8.48 0 0 1 8 8v.5z"></path></svg>
                                comments</a>
                              <a href="javascript:void(0)" class="link me-2 font-weight-medium"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-heart fill-white feather-sm text-danger"><path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path></svg>
                                5 Likes</a>
                            </div>
                          </div>
                        </div>
                        <div class="sl-item my-4 border-top pt-4">
                          <div class="sl-left float-left me-3">
                            <img src="../../assets/images/users/4.jpg" alt="user" class="rounded-circle">
                          </div>
                          <div class="sl-right">
                            <div>
                              <div class="d-md-flex">
                                <h5 class="mb-0 font-weight-medium">
                                  <a href="#" class="link">John Doe</a>
                                </h5>
                                <span class="sl-date text-muted ms-1">5 minutes ago</span>
                              </div>
                              <blockquote class="mt-2 fs-3">
                                Lorem ipsum dolor sit amet, consectetur
                                adipisicing elit, sed do eiusmod tempor
                                incididunt
                              </blockquote>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!--second tab-->
                  <div class="tab-pane" id="profile" role="tabpanel">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-md-3 col-xs-6 border-end">
                          <strong>Full Name</strong>
                          <br>
                          <p class="text-muted">Johnathan Deo</p>
                        </div>
                        <div class="col-md-3 col-xs-6 border-end">
                          <strong>Mobile</strong>
                          <br>
                          <p class="text-muted">(123) 456 7890</p>
                        </div>
                        <div class="col-md-3 col-xs-6 border-end">
                          <strong>Email</strong>
                          <br>
                          <p class="text-muted">johnathan@admin.com</p>
                        </div>
                        <div class="col-md-3 col-xs-6">
                          <strong>Location</strong>
                          <br>
                          <p class="text-muted">London</p>
                        </div>
                      </div>
                      <hr>
                      <p class="mt-4">
                        Donec pede justo, fringilla vel, aliquet nec, vulputate
                        eget, arcu. In enim justo, rhoncus ut, imperdiet a,
                        venenatis vitae, justo. Nullam dictum felis eu pede
                        mollis pretium. Integer tincidunt.Cras dapibus. Vivamus
                        elementum semper nisi. Aenean vulputate eleifend tellus.
                        Aenean leo ligula, porttitor eu, consequat vitae,
                        eleifend ac, enim.
                      </p>
                      <p>
                        Lorem Ipsum is simply dummy text of the printing and
                        typesetting industry. Lorem Ipsum has been the
                        industry's standard dummy text ever since the 1500s,
                        when an unknown printer took a galley of type and
                        scrambled it to make a type specimen book. It has
                        survived not only five centuries
                      </p>
                      <p>
                        It was popularised in the 1960s with the release of
                        Letraset sheets containing Lorem Ipsum passages, and
                        more recently with desktop publishing software like
                        Aldus PageMaker including versions of Lorem Ipsum.
                      </p>
                      <h4 class="font-medium mt-4">Skill Set</h4>
                      <hr>
                      <h5 class="mt-4">
                        Wordpress <span class="pull-right">80%</span>
                      </h5>
                      <div class="progress">
                        <div class="progress-bar bg-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%; height: 6px">
                          <span class="sr-only">50% Complete</span>
                        </div>
                      </div>
                      <h5 class="mt-4">
                        HTML 5 <span class="pull-right">90%</span>
                      </h5>
                      <div class="progress">
                        <div class="progress-bar bg-info" role="progressbar" aria-valuenow="90" aria-valuemin="0" aria-valuemax="100" style="width: 90%; height: 6px">
                          <span class="sr-only">50% Complete</span>
                        </div>
                      </div>
                      <h5 class="mt-4">
                        jQuery <span class="pull-right">50%</span>
                      </h5>
                      <div class="progress">
                        <div class="progress-bar bg-danger" role="progressbar" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100" style="width: 50%; height: 6px">
                          <span class="sr-only">50% Complete</span>
                        </div>
                      </div>
                      <h5 class="mt-4">
                        Photoshop <span class="pull-right">70%</span>
                      </h5>
                      <div class="progress">
                        <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%; height: 6px">
                          <span class="sr-only">50% Complete</span>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="tab-pane" id="settings" role="tabpanel">
                    <div class="card-body">
                      <form class="form-horizontal form-material">
                        <div class="form-group mb-3">
                          <label class="col-md-12">Full Name</label>
                          <div class="col-md-12">
                            <input type="text" placeholder="Johnathan Doe" class="form-control form-control-line">
                          </div>
                        </div>
                        <div class="form-group mb-3">
                          <label for="example-email" class="col-md-12">Email</label>
                          <div class="col-md-12">
                            <input type="email" placeholder="johnathan@admin.com" class="form-control form-control-line" name="example-email" id="example-email">
                          </div>
                        </div>
                        <div class="form-group mb-3">
                          <label class="col-md-12">Password</label>
                          <div class="col-md-12">
                            <input type="password" value="password" class="form-control form-control-line">
                          </div>
                        </div>
                        <div class="form-group mb-3">
                          <label class="col-md-12">Phone No</label>
                          <div class="col-md-12">
                            <input type="text" placeholder="123 456 7890" class="form-control form-control-line">
                          </div>
                        </div>
                        <div class="form-group mb-3">
                          <label class="col-md-12">Message</label>
                          <div class="col-md-12">
                            <textarea rows="5" class="form-control form-control-line"></textarea>
                          </div>
                        </div>
                        <div class="form-group mb-3">
                          <label class="col-sm-12">Select Country</label>
                          <div class="col-sm-12">
                            <select class="form-control form-control-line">
                              <option>London</option>
                              <option>India</option>
                              <option>Usa</option>
                              <option>Canada</option>
                              <option>Thailand</option>
                            </select>
                          </div>
                        </div>
                        <div class="form-group mb-3">
                          <div class="col-sm-12">
                            <button class="btn btn-success">
                              Update Profile
                            </button>
                          </div>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>

    </form>
</body>
</html>

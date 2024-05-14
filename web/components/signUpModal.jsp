<div class="modal fade" id="signupModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="loginModalLabel">Register with OES</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="controllers/signupHandler.jsp" method="post" onsubmit="return validateSignUpForm()">
                    <div class="mb-3 d-flex" style="gap: 10px">
                        <input type="number" name="rollno" class="form-control" placeholder="Enter roll no." required/>
                        <input type="text" name="name" class="form-control" id="name" placeholder="Enter full name" required>
                    </div>
                    <div class="mb-3 d-flex" style="gap: 10px">
                        <input type="text" name="fname" class="form-control" placeholder="Enter your father's name" required/>
                        <input type="text" name="mname" class="form-control" placeholder="Enter your mother's name" required/>
                    </div>
                    <div class="mb-3">
                        <input type="text" name="address" class="form-control" id="address" placeholder="Enter address" required>
                    </div>
                    <div class="mb-3 d-flex" style="gap: 10px">
                        <select name="program" class="form-control" style="font-size: 15px">
                            <option selected>-Select Program-</option>
                            <option value="B.Tech.">B.Tech.</option>
                            <option value="M.Tech.">M.Tech.</option>
                            <option value="Diploma">Diploma</option>
                        </select>
                        <select name="branch" class="form-control" style="font-size: 15px">
                            <option selected>-Select Branch-</option>
                            <option value="CS">CS</option>
                            <option value="IT">IT</option>
                            <option value="EC">EC</option>
                            <option value="EE">EE</option>
                        </select>
                        <select name="year" class="form-control" style="font-size: 15px">
                            <option selected>-Select Year-</option>
                            <option value="First Year">First Year</option>
                            <option value="Second Year">Second Year</option>
                            <option value="Third Year">Third Year</option>
                            <option value="Final Year">Final Year</option>
                        </select>
                    </div>
                    <div class="mb-3">
                        <input type="number" class="form-control" name="contactno" id="contactno" placeholder="Enter contact no." required>
                    </div>
                    <div class="mb-3">
                        <input type="email" name="email" class="form-control" id="email" placeholder="Enter email" required>
                    </div>
                    <div class="mb-3">
                        <input type="password" name="password" class="form-control" id="password" placeholder="Enter password" required>
                    </div>
                    <div class="mb-3">
                        <input type="password" name="conpassword" class="form-control" id="conpassword" placeholder="Confirm password" required>
                    </div>
                    <div class="mb-3 d-flex" style="gap: 10px">
                        <span>I'm a</span>
                        <input type="radio" class="ml-3" id="gender-male" name="gender" value="male"  required/><span>Male</span>
                        <input type="radio" class="ml-3" id="gender-female" name="gender" value="female"  required/> <span>Female</span>
                    </div>
                    <button type="submit" class="btn btn-primary form-control">Register</button>
                </form>
            </div>
            <div class="modal-footer justify-content-center">
                <span>Already have an account?</span>
                <a href="#" data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#loginModal">Login</a>
            </div>
        </div>
    </div>
</div>
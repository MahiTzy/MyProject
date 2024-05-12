<div class="modal fade" id="loginModal" tabindex="-1" aria-labelledby="loginModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" style="max-width: 400px">
        <div class="modal-content">
            <div class="modal-header">
                <h1 class="modal-title fs-5" id="loginModalLabel">Login with OES</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body text-center">
                <form action="controllers/loginHandler.jsp" method="post">
                    <div class="mb-3">
                        <label for="email" class="form-label visually-hidden">Email address</label>
                        <input type="text" class="form-control" id="email" name="userid" placeholder="Enter your Id" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label visually-hidden">Password</label>
                        <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password"  required>
                    </div>
                    <button type="submit" class="btn btn-primary form-control">Login</button>
                </form>
            </div>
            <div class="modal-footer justify-content-center">
                <a href='#' data-bs-dismiss="modal" data-bs-toggle="modal" data-bs-target="#signupModal">Click here</a>
                <span>to register a new account</span>
            </div>
        </div>
    </div>
</div>
<!-- app/Views/pages/register.php -->
<?= $this->extend('components/layout_clear') ?>
<?= $this->section('content') ?>
    <h1>Register</h1>
    <?php if(session()->getFlashData('errors')): ?>
        <div class="alert alert-danger">
            <ul>
                <?php foreach(session()->getFlashData('errors') as $error): ?>
                    <li><?= esc($error) ?></li>
                <?php endforeach; ?>
            </ul>
        </div>
    <?php endif; ?>

    <?php if(session()->getFlashData('success')): ?>
        <div class="alert alert-success">
            <?= session()->getFlashData('success') ?>
        </div>
    <?php endif; ?>

    <form action="<?= base_url('register/save') ?>" method="post">
        <?= csrf_field() ?>
        <div class="form-group">
            <label for="username">Username</label>
            <input type="text" name="username" class="form-control" id="username" value="<?= old('username') ?>">
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input type="password" name="password" class="form-control" id="password">
        </div>
        <div class="form-group">
            <label for="confirm_password">Confirm Password</label>
            <input type="password" name="confirm_password" class="form-control" id="confirm_password">
        </div>
        <button type="submit" class="btn btn-primary">Register</button>
    </form>
<?= $this->endSection() ?>

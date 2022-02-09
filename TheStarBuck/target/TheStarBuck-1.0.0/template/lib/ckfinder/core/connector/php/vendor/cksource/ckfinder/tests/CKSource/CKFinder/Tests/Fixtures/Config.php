<?php

/*
 * CKFinder
 * ========
 * https://ckeditor.com/ckfinder/
 * Copyright (c) 2007-2020, CKSource - Frederico Knabben. All rights reserved.
 *
 * The software, this file and its contents are subject to the CKFinder
 * License. Please read the license.txt file before using, installing, copying,
 * modifying or distribute this file or part of its contents. The contents of
 * this file is part of the Source Code of CKFinder.
 */

namespace CKSource\CKFinder\Tests\Fixtures;

class Config
{
    public static function getArray()
    {
        return require __DIR__.'/config_test.php';
    }

    public static function getAclNodes()
    {
        $config = require __DIR__.'/config_test.php';

        return $config['accessControl'];
    }
}

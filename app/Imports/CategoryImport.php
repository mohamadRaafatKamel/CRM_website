<?php

namespace App\Imports;

use App\Models\Category;
use Maatwebsite\Excel\Concerns\ToModel;
use Maatwebsite\Excel\Concerns\WithStartRow;
use Maatwebsite\Excel\Concerns\WithCustomCsvSettings;
use Illuminate\Support\Facades\Validator;

class CategoryImport implements ToModel, WithStartRow, WithCustomCsvSettings
{
    private $errors;
    private $row = 1;

    /**
    * UsersImport constructor.
    * @param StoreEntity $store
    */
    public function __construct($errors = [])
    {
        $this->errors = $errors;
    }

    public function startRow(): int
    {
        return 2;
    }

    public function chunkSize(): int
    {
        return 500;
    }

    public function getCsvSettings(): array
    {
        return [
            'delimiter' => ';'
        ];
    }
    /**
    * @param array $row
    *
    * @return \Illuminate\Database\Eloquent\Model|null
    */
    public function model2(array $row)
    {
        // return new Category([
        //     'name_ar'     => $row[0],
        //     'name_en'    => $row[1],
        //     'parent_id'    => $row[2],
        // ]);
            print_r($row);
    }

    public function model(array $row)
  {
      if (array_key_exists(++$this->row, $this->errors)) {
          return null;
      }
 
      $validator = Validator::make($row, [
          '0' => [
              'required',
              'string',
              'max:255',
          ],
          '1' => [
              'required',
              'string',
              'max:255',
          ],
          '2' => [
            'required',
              'string',
              'min:6',
              'nullable',
          ],
      ]);
 
      print_r($row);

      if ($validator->fails()) {
          return null;
      }


 
    //   DB::beginTransaction();
    //   try {
    //       User::create([
    //           'name' => $row[0],
    //           'email' => $row[1],
    //           'password' => $row[2],
    //       ]);
 
    //       DB::commit();
    //   } catch (Exceptions $e) {
    //       DB::rollBack();
    //       Log::debug($e);
    //   }
  }


}

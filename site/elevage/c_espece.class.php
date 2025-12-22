<?php
class Espece {
    private $id;
    private $libelleEspece;

    public function __construct($id = null, $libelleEspece = null) {
        $this->id = $id;
        $this->libelleEspece = $libelleEspece;
    }

    // Getters
    public function getId() {
        return $this->id;
    }

    public function getLibelleEspece() {
        return $this->libelleEspece;
    }

    // Setters
    public function setId($id) {
        $this->id = $id;
    }

    public function setLibelleEspece($libelleEspece) {
        $this->libelleEspece = $libelleEspece;
    }
}
?>
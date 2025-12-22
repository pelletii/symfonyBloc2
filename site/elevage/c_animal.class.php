<?php
class Animal {
    // Attributs
    private $id;
    private $nomAnim;
    private $sexeAnim;
    private $dateNaisAnim;
    private $commentaire;
    private $idEspece;
    private $idRace;
    private $idMere;
    private $idPere;
    private $disponible;

    // Constructeur
    public function __construct(
        $id = null,
        $nomAnim = null,
        $sexeAnim = null,
        $dateNaisAnim = null,
        $commentaire = null,
        $idEspece = null,
        $idRace = null,
        $idMere = null,
        $idPere = null,
        $disponible = null
    ) {
        $this->id = $id;
        $this->nomAnim = $nomAnim;
        $this->sexeAnim = $sexeAnim;
        $this->dateNaisAnim = $dateNaisAnim;
        $this->commentaire = $commentaire;
        $this->idEspece = $idEspece;
        $this->idRace = $idRace;
        $this->idMere = $idMere;
        $this->idPere = $idPere;
        $this->disponible = $disponible;
    }

    // Getters et Setters
    public function getId() { return $this->id; }
    public function getNomAnim() { return $this->nomAnim; }
    public function getSexeAnim() { return $this->sexeAnim; }
    public function getDateNaisAnim() { return $this->dateNaisAnim; }
    public function getCommentaire() { return $this->commentaire; }
    public function getIdEspece() { return $this->idEspece; }
    public function getIdRace() { return $this->idRace; }
    public function getIdMere() { return $this->idMere; }
    public function getIdPere() { return $this->idPere; }
    public function getDisponible() { return $this->disponible; }

    public function setId($id) { $this->id = $id; }
    public function setNomAnim($nomAnim) { $this->nomAnim = $nomAnim; }
    public function setSexeAnim($sexeAnim) { $this->sexeAnim = $sexeAnim; }
    public function setDateNaisAnim($dateNaisAnim) { $this->dateNaisAnim = $dateNaisAnim; }
    public function setCommentaire($commentaire) { $this->commentaire = $commentaire; }
    public function setIdEspece($idEspece) { $this->idEspece = $idEspece; }
    public function setIdRace($idRace) { $this->idRace = $idRace; }
    public function setIdMere($idMere) { $this->idMere = $idMere; }
    public function setIdPere($idPere) { $this->idPere = $idPere; }
    public function setDisponible($disponible) { $this->disponible = $disponible; }
}

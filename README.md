# Async Herald pour Homebrew

Analyse de code 100 % locale : sécurité, qualité et dépendances vulnérables. [herald.codes](https://herald.codes/)

```bash
brew install async-herald/tap/herald
```

Le nom complet suffit : Homebrew ajoute le tap et l'approuve pour ce cask. Pour taper ensuite `brew install herald`
tout court, Homebrew (7+) demande d'approuver le tap une fois :

```bash
brew tap async-herald/tap
brew trust async-herald/tap
brew install herald
```

Mises à jour : `brew upgrade herald`. Désinstallation complète (données locales comprises) :
`brew uninstall --zap herald`.

Mac Apple Silicon uniquement.

---

Ce dépôt est mis à jour automatiquement à chaque version par le workflow « macOS » de l'app ; le modèle du cask
vit dans `packaging/homebrew/Casks/herald.rb` du dépôt de l'app.

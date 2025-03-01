.class public LGeneralFunction/n/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/app/Application;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 19
    const-string v0, "com.ability.wearablecam"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/app/Application;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    .prologue
    .line 29
    const-string v0, "com.ability.wearablecam"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

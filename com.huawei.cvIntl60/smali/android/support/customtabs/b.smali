.class public final Landroid/support/customtabs/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/support/customtabs/c;

.field private final b:Landroid/content/ComponentName;


# virtual methods
.method a()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Landroid/support/customtabs/b;->a:Landroid/support/customtabs/c;

    invoke-interface {v0}, Landroid/support/customtabs/c;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method b()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Landroid/support/customtabs/b;->b:Landroid/content/ComponentName;

    return-object v0
.end method

.class public LGeneralFunction/Player/player/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LGeneralFunction/Player/player/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:LGeneralFunction/Player/player/f;


# direct methods
.method public constructor <init>(LGeneralFunction/Player/player/f;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, LGeneralFunction/Player/player/f$a;->a:LGeneralFunction/Player/player/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    .prologue
    .line 182
    iget v0, p1, Landroid/hardware/SensorEvent;->accuracy:I

    if-nez v0, :cond_0

    .line 193
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 189
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 190
    iget-object v1, p0, LGeneralFunction/Player/player/f$a;->a:LGeneralFunction/Player/player/f;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v3, p0, LGeneralFunction/Player/player/f$a;->a:LGeneralFunction/Player/player/f;

    invoke-static {v3}, LGeneralFunction/Player/player/f;->a(LGeneralFunction/Player/player/f;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getRotation()I

    move-result v3

    invoke-static {v1, v2, v3}, LGeneralFunction/Player/player/f;->a(LGeneralFunction/Player/player/f;[FI)[F

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 191
    iget-object v1, p0, LGeneralFunction/Player/player/f$a;->a:LGeneralFunction/Player/player/f;

    invoke-static {v1}, LGeneralFunction/Player/player/f;->b(LGeneralFunction/Player/player/f;)LGeneralFunction/Player/player/f$c;

    move-result-object v1

    invoke-interface {v1, v0}, LGeneralFunction/Player/player/f$c;->a(Landroid/os/Message;)V

    goto :goto_0
.end method

.class public Lcom/facebook/share/model/CameraEffectArguments;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/CameraEffectArguments$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/CameraEffectArguments;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lcom/facebook/share/model/CameraEffectArguments$1;

    invoke-direct {v0}, Lcom/facebook/share/model/CameraEffectArguments$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/CameraEffectArguments;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments;->a:Landroid/os/Bundle;

    .line 42
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/CameraEffectArguments$a;)V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/facebook/share/model/CameraEffectArguments$a;->a(Lcom/facebook/share/model/CameraEffectArguments$a;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments;->a:Landroid/os/Bundle;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/CameraEffectArguments$a;Lcom/facebook/share/model/CameraEffectArguments$1;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/share/model/CameraEffectArguments;-><init>(Lcom/facebook/share/model/CameraEffectArguments$a;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/share/model/CameraEffectArguments;)Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments;->a:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/share/model/CameraEffectArguments;->a:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 98
    return-void
.end method

.class public final enum Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerMediaTemplateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;

.field public static final enum b:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;

.field private static final synthetic c:[Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;->a:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;

    .line 39
    new-instance v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;->b:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;

    sget-object v1, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;->a:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;->b:Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;->c:[Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;->c:[Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;

    invoke-virtual {v0}, [Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/ShareMessengerMediaTemplateContent$a;

    return-object v0
.end method

.class public final enum Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMessengerGenericTemplateContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;

.field public static final enum b:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;

.field private static final synthetic c:[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;

    const-string v1, "HORIZONTAL"

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;->a:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;

    .line 48
    new-instance v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;

    const-string v1, "SQUARE"

    invoke-direct {v0, v1, v3}, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;->b:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;

    sget-object v1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;->a:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;->b:Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;->c:[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;->c:[Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;

    invoke-virtual {v0}, [Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/ShareMessengerGenericTemplateContent$a;

    return-object v0
.end method

.class public Lcom/google/api/client/googleapis/auth/clientlogin/ClientLoginResponseException;
.super Lcom/google/api/client/http/HttpResponseException;
.source "SourceFile"


# annotations
.annotation build Lcom/google/api/client/util/Beta;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x45085391c816c270L


# instance fields
.field private final transient details:Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$ErrorInfo;


# direct methods
.method constructor <init>(Lcom/google/api/client/http/HttpResponseException$Builder;Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$ErrorInfo;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/google/api/client/http/HttpResponseException;-><init>(Lcom/google/api/client/http/HttpResponseException$Builder;)V

    .line 47
    iput-object p2, p0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLoginResponseException;->details:Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$ErrorInfo;

    .line 48
    return-void
.end method


# virtual methods
.method public final getDetails()Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$ErrorInfo;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/api/client/googleapis/auth/clientlogin/ClientLoginResponseException;->details:Lcom/google/api/client/googleapis/auth/clientlogin/ClientLogin$ErrorInfo;

    return-object v0
.end method

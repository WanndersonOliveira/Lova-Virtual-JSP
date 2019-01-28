package codigos;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author aluno
 */
public class Produto {
    private String codigo;
    private String descricao;
    private String valor;
    private boolean selecionado;
    
    public boolean isSelecionado() {
        return selecionado;
    }

    public void setSelecionado(boolean selecionado) {
        this.selecionado = selecionado;
    }
    
    
    public Produto(String codigo, String descricao, String valor){
        this.codigo = codigo;
        this.descricao = descricao;
        this.valor = valor;
    }
    
    public void setCodigo(String codigo){
        this.codigo = codigo;
    }
    
    public void setDescricao(String descricao){
        this.descricao = descricao;
    }
    
    public void setValor(String valor){
        this.valor = valor;
    }

    public String getCodigo() {
        return codigo;
    }

    public String getDescricao() {
        return descricao;
    }

    public String getValor() {
        return valor;
    }
    
    
}

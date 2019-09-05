void leaf() {
  __asm__("cmovel -4(%rbp), %ebx");
  }

void main() {
  leaf();
}
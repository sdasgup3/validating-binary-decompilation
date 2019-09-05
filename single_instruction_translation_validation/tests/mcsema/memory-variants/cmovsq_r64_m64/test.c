void leaf() {
  __asm__("cmovsq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}
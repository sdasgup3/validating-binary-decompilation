void leaf() {
  __asm__("sbbq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}
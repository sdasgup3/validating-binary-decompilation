void leaf() {
  __asm__("cmoveq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}
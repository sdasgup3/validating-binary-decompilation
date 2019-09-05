void leaf() {
  __asm__("movzwq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}
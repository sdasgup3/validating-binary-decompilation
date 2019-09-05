void leaf() {
  __asm__("movswq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}
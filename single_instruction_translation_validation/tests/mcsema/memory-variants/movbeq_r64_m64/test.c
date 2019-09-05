void leaf() {
  __asm__("movbeq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}
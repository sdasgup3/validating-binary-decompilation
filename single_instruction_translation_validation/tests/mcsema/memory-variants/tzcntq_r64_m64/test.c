void leaf() {
  __asm__("tzcntq -4(%rbp), %rbx");
  }

void main() {
  leaf();
}
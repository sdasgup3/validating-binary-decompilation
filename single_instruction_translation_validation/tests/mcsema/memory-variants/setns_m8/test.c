void leaf() {
  __asm__("setns -4(%rbp)");
  }

void main() {
  leaf();
}